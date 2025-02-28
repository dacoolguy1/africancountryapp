import 'package:dartz/dartz.dart';
import '../../core/error/exceptions.dart';
import '../../core/network/api_client.dart';
import '../datasources/country_data_source.dart';
import '../models/country.dart';
import '../models/country_detail.dart';

abstract class CountryRepository {
  Future<Either<AppException, List<Country>>> getAfricanCountries();
  Future<Either<AppException, CountryDetail>> getCountryDetails(String name);
}

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
        // Cache the result
        await dataSource.cacheCountries(countries);
        return Right(countries);
      } else {
        return Left(NetworkException(message: 'No internet connection'));
      }
    } on ServerException catch (e) {
      return Left(e);
    } on CacheException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(AppException(message: e.toString()));
    }
  }

  @override
  Future<Either<AppException, CountryDetail>> getCountryDetails(
      String name) async {
    try {
      // Try to get from cache first
      final cachedCountryDetail = await dataSource.getCachedCountryDetail(name);
      if (cachedCountryDetail != null) {
        return Right(cachedCountryDetail);
      }

      // If not in cache or network is available, fetch from API
      if (await apiClient.isConnected) {
        final countryDetail = await dataSource.getCountryDetails(name);
        // Cache the result
        await dataSource.cacheCountryDetail(countryDetail);
        print(countryDetail);
        return Right(countryDetail);
      } else {
        return Left(NetworkException(message: 'No internet connection'));
      }
    } on ServerException catch (e) {
      print(e);

      return Left(e);
    } on CacheException catch (e) {
      print(e);

      return Left(e);
    } catch (e) {
      print(e);
      return Left(AppException(message: e.toString()));
    }
  }
}
