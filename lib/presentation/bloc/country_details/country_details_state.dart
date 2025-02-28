import 'package:equatable/equatable.dart';
import '../../../data/models/country_detail.dart';

abstract class CountryDetailsState extends Equatable {
  const CountryDetailsState();

  @override
  List<Object> get props => [];
}

class CountryDetailsInitial extends CountryDetailsState {}

class CountryDetailsLoading extends CountryDetailsState {}

class CountryDetailsLoaded extends CountryDetailsState {
  final CountryDetail countryDetail;

  const CountryDetailsLoaded({required this.countryDetail});

  @override
  List<Object> get props => [countryDetail];
}

class CountryDetailsError extends CountryDetailsState {
  final String message;

  const CountryDetailsError({required this.message});

  @override
  List<Object> get props => [message];
}
