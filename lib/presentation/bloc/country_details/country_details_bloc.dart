import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../data/models/country_detail.dart';
import '../../../data/repositories/country_repository.dart';
import 'country_details_event.dart';
import 'country_details_state.dart';

class CountryDetailsBloc
    extends Bloc<CountryDetailsEvent, CountryDetailsState> {
  final CountryRepository repository;

  CountryDetailsBloc({required this.repository})
      : super(CountryDetailsInitial()) {
    on<FetchCountryDetails>(_onFetchCountryDetails);
  }

  Future<void> _onFetchCountryDetails(
    FetchCountryDetails event,
    Emitter<CountryDetailsState> emit,
  ) async {
    emit(CountryDetailsLoading());

    final result = await repository.getCountryDetails(event.name);

    result.fold(
      (failure) => emit(CountryDetailsError(message: failure.message)),
      (countryDetail) =>
          emit(CountryDetailsLoaded(countryDetail: countryDetail)),
    );
  }
}
