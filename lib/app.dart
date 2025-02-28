import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'core/constants/app_constants.dart';
import 'presentation/bloc/countries/countries_bloc.dart';
import 'presentation/bloc/country_details/country_details_bloc.dart';
import 'presentation/screens/countries_screen.dart';

class AfricanCountriesApp extends StatelessWidget {
  const AfricanCountriesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CountriesBloc>(
          create: (_) => GetIt.instance<CountriesBloc>(),
        ),
        BlocProvider<CountryDetailsBloc>(
          create: (_) => GetIt.instance<CountryDetailsBloc>(),
        ),
      ],
      child: MaterialApp(
        title: AppStrings.appTitle,
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          scaffoldBackgroundColor: Colors.grey[50],
          appBarTheme: const AppBarTheme(
            centerTitle: true,
          ),
          cardTheme: CardTheme(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        home: const CountriesScreen(),
      ),
    );
  }
}
