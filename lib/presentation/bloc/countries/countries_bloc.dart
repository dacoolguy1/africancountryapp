import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../core/error/exceptions.dart';
import '../../../core/utils/debouncer.dart';
import '../../../data/models/country.dart';
import '../../../data/repositories/country_repository.dart';
import 'countries_event.dart';
import 'countries_state.dart';

class CountriesBloc extends Bloc<CountriesEvent, CountriesState> {
  final CountryRepository repository;
  final Debouncer _debouncer = Debouncer(milliseconds: 300);

  CountriesBloc({required this.repository}) : super(CountriesInitial()) {
    on<FetchCountries>(_onFetchCountries);
    on<SearchCountries>(_onSearchCountries);
  }
  Timer? _searchDebounceTimer;

  Future<void> _onFetchCountries(
    FetchCountries event,
    Emitter<CountriesState> emit,
  ) async {
    emit(CountriesLoading());

    final result = await repository.getAfricanCountries();

    result.fold(
      (failure) => emit(CountriesError(message: failure.message)),
      (countries) {
        if (countries.isEmpty) {
          emit(CountriesEmpty());
        } else {
          emit(CountriesLoaded(
              countries: countries, filteredCountries: countries));
        }
      },
    );
  }

  Future<void> _onSearchCountries(
    SearchCountries event,
    Emitter<CountriesState> emit,
  ) async {
    final currentState = state;

    if (currentState is CountriesLoaded) {
      // Cancel any existing timer
      _searchDebounceTimer?.cancel();

      // Create a Completer to allow us to wait
      final completer = Completer();

      // Set a new timer
      _searchDebounceTimer = Timer(const Duration(milliseconds: 300), () {
        final query = event.query.toLowerCase();

        if (query.isEmpty) {
          emit(
              currentState.copyWith(filteredCountries: currentState.countries));
        } else {
          final filteredList = currentState.countries
              .where((country) =>
                  country.name.common.toLowerCase().contains(query) ||
                  country.name.official.toLowerCase().contains(query))
              .toList();

          emit(currentState.copyWith(filteredCountries: filteredList));
        }

        completer.complete();
      });

      // Wait for the timer to complete before ending the event handler
      await completer.future;
    }
  }
}
