import 'package:equatable/equatable.dart';
import '../../../data/models/country.dart';

abstract class CountriesState extends Equatable {
  const CountriesState();

  @override
  List<Object> get props => [];
}

class CountriesInitial extends CountriesState {}

class CountriesLoading extends CountriesState {}

class CountriesLoaded extends CountriesState {
  final List<Country> countries;
  final List<Country> filteredCountries;

  const CountriesLoaded({
    required this.countries,
    required this.filteredCountries,
  });

  CountriesLoaded copyWith({
    List<Country>? countries,
    List<Country>? filteredCountries,
  }) {
    return CountriesLoaded(
      countries: countries ?? this.countries,
      filteredCountries: filteredCountries ?? this.filteredCountries,
    );
  }

  @override
  List<Object> get props => [countries, filteredCountries];
}

class CountriesEmpty extends CountriesState {}

class CountriesError extends CountriesState {
  final String message;

  const CountriesError({required this.message});

  @override
  List<Object> get props => [message];
}
