import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'app.dart';
import 'core/constants/app_constants.dart';
import 'core/network/api_client.dart';
import 'data/datasources/country_data_source.dart';
import 'data/models/country.dart';
import 'data/models/country_detail.dart';
import 'data/repositories/country_repository.dart';
import 'presentation/bloc/countries/countries_bloc.dart';
import 'presentation/bloc/country_details/country_details_bloc.dart';

final getIt = GetIt.instance;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set preferred orientation
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // Initialize Hive
  await Hive.initFlutter();

  // Register adapters
  Hive.registerAdapter(CountryImplAdapter());
  Hive.registerAdapter(NameImplAdapter());
  Hive.registerAdapter(FlagsImplAdapter());
  Hive.registerAdapter(CountryDetailImplAdapter());
  Hive.registerAdapter(CurrencyImplAdapter());
  Hive.registerAdapter(TranslationImplAdapter());

  // Open Hive boxes
  final countriesBox = await Hive.openBox<String>(HiveBoxes.countriesBox);
  final countryDetailsBox =
      await Hive.openBox<String>(HiveBoxes.countryDetailsBox);

  // Setup dependency injection
  _setupDependencies(countriesBox, countryDetailsBox);

  runApp(const AfricanCountriesApp());
}

void _setupDependencies(
    Box<String> countriesBox, Box<String> countryDetailsBox) {
  // Core
  getIt.registerLazySingleton(() => http.Client());
  getIt.registerLazySingleton(() => InternetConnectionChecker());
  getIt.registerLazySingleton(() => ApiClient(
        client: getIt<http.Client>(),
        connectionChecker: getIt<InternetConnectionChecker>(),
      ));

  // Data sources
  getIt.registerLazySingleton<CountryDataSource>(() => CountryDataSourceImpl(
        apiClient: getIt<ApiClient>(),
        countriesBox: countriesBox,
        countryDetailsBox: countryDetailsBox,
      ));

  // Repositories
  getIt.registerLazySingleton<CountryRepository>(() => CountryRepositoryImpl(
        dataSource: getIt<CountryDataSource>(),
        apiClient: getIt<ApiClient>(),
      ));

  // BLoCs
  getIt.registerFactory(
      () => CountriesBloc(repository: getIt<CountryRepository>()));
  getIt.registerFactory(
      () => CountryDetailsBloc(repository: getIt<CountryRepository>()));
}
