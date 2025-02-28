# 🌍 African Countries Explorer

[![Flutter Version](https://img.shields.io/badge/Flutter-3.10.0+-blue.svg)](https://flutter.dev/)
[![Dart Version](https://img.shields.io/badge/Dart-3.0.0+-blue.svg)](https://dart.dev/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A modern, feature-rich Flutter application showcasing African countries with detailed information. This app demonstrates clean architecture principles, state management with BLoC, and implements various best practices for building production-ready Flutter applications by Temiede Emmanuel.

![App Screenshot](https://via.placeholder.com/800x400)

## 🌟 Features

- **Comprehensive Country Data**: Access detailed information about all African countries
- **Offline Support**: Cache country data for offline access
- **Clean UI**: Modern and intuitive interface with smooth animations
- **Search & Filter**: Easily find countries by name, region, or other properties
- **Dark Mode**: Support for light and dark themes
- **Responsive Design**: Works seamlessly on phones and tablets

## 🏗️ Architecture

This project follows Clean Architecture principles with a clear separation of concerns:

```
lib/
├── core/            # Core functionality, constants, and utilities
├── data/            # Data layer (repositories, data sources, models)
├── presentation/    # UI layer (screens, widgets, BLoC)
└── main.dart        # Application entry point
```

### Key Components

- **BLoC Pattern**: For state management, separating business logic from UI
- **Repository Pattern**: Abstracting data sources and providing a clean API
- **Dependency Injection**: For better testability and modularity
- **Error Handling**: Comprehensive error handling with user-friendly messages
- **Caching Strategy**: Efficient caching for offline access and performance

## 💻 Technical Stack

- **Flutter & Dart**: UI framework and programming language
- **BLoC**: State management
- **Freezed**: Code generation for immutable classes
- **Hive**: Local database for caching
- **Dio**: HTTP client for API requests
- **Dartz**: Functional programming concepts (Either, Option)
- **Get_it**: Dependency injection
- **Flutter_test**: Unit and widget testing

## 🚀 Installation

```bash
# Clone this repository
$ git clone https://github.com/yourusername/african_countries_app.git

# Go into the repository
$ cd african_countries_app

# Install dependencies
$ flutter pub get

# Generate required files
$ flutter pub run build_runner build --delete-conflicting-outputs

# Run the app
$ flutter run
```


## 🔧 Code Examples

### Repository Pattern Implementation

```dart
class CountryRepositoryImpl implements CountryRepository {
  final CountryDataSource dataSource;
  final ApiClient apiClient;

  CountryRepositoryImpl({
    required this.dataSource,
    required this.apiClient,
  });

  @override
  Future<Either<AppException, List<Country>>> getAfricanCountries() async {
    try {
      // Try to get from cache first
      final cachedCountries = await dataSource.getCachedCountries();
      if (cachedCountries != null && cachedCountries.isNotEmpty) {
        return Right(cachedCountries);
      }

      // If not in cache or network is available, fetch from API
      if (await apiClient.isConnected) {
        final countries = await dataSource.getAfricanCountries();
        await dataSource.cacheCountries(countries);
        return Right(countries);
      } else {
        return Left(NetworkException(message: 'No internet connection'));
      }
    } catch (e) {
      return Left(AppException(message: e.toString()));
    }
  }
}
```

### BLoC Implementation

```dart
class CountriesBloc extends Bloc<CountriesEvent, CountriesState> {
  final CountryRepository repository;

  CountriesBloc({required this.repository}) : super(CountriesInitial()) {
    on<FetchCountries>(_onFetchCountries);
    on<SearchCountries>(_onSearchCountries);
  }

  Future<void> _onFetchCountries(
    FetchCountries event,
    Emitter<CountriesState> emit,
  ) async {
    emit(CountriesLoading());
    final result = await repository.getAfricanCountries();
    result.fold(
      (failure) => emit(CountriesError(message: failure.message)),
      (countries) => emit(CountriesLoaded(countries: countries)),
    );
  }

  // Additional event handlers...
}
```


## 🔮 Future Improvements

- Add language localization
- Add tests
- Implement advanced filtering options
- Add country comparison feature
- Integrate with additional data sources
- Implement CI/CD pipeline

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 About the Developer

I'm a Flutter developer passionate about building clean, maintainable, and user-friendly applications. This project demonstrates my approach to architecture, UI design, and problem-solving in mobile development.

Feel free to connect with me on [LinkedIn](https://www.linkedin.com/in/emmanueltemiede) or check out my other projects on [GitHub](https://github.com/dacoolguy1).