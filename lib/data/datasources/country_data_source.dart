import 'dart:convert';
import 'package:hive/hive.dart';
import '../../core/constants/app_constants.dart';
import '../../core/error/exceptions.dart';
import '../../core/network/api_client.dart';
import '../models/country.dart';
import '../models/country_detail.dart';

abstract class CountryDataSource {
  Future<List<Country>> getAfricanCountries();
  Future<CountryDetail> getCountryDetails(String name);
  Future<void> cacheCountries(List<Country> countries);
  Future<void> cacheCountryDetail(CountryDetail countryDetail);
  Future<List<Country>?> getCachedCountries();
  Future<CountryDetail?> getCachedCountryDetail(String name);
}

class CountryDataSourceImpl implements CountryDataSource {
  final ApiClient apiClient;
  final Box<String> countriesBox;
  final Box<String> countryDetailsBox;

  CountryDataSourceImpl({
    required this.apiClient,
    required this.countriesBox,
    required this.countryDetailsBox,
  });

  @override
  Future<List<Country>> getAfricanCountries() async {
    try {
      final response = await apiClient.get(ApiEndpoints.africanCountries);
      return (response as List)
          .map((country) => Country.fromJson(country))
          .toList();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<CountryDetail> getCountryDetails(String name) async {
    try {
      final response = await apiClient.get(ApiEndpoints.countryByName(name));
      return CountryDetail.fromJson((response as List).first);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<void> cacheCountries(List<Country> countries) async {
    try {
      final countriesJson =
          countries.map((country) => jsonEncode(country.toJson())).toList();
      await countriesBox.put('all_countries', jsonEncode(countriesJson));
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  @override
  Future<void> cacheCountryDetail(CountryDetail countryDetail) async {
    try {
      final countryJson = jsonEncode(countryDetail.toJson());
      await countryDetailsBox.put(countryDetail.name.common, countryJson);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  @override
  Future<List<Country>?> getCachedCountries() async {
    try {
      final cachedData = countriesBox.get('all_countries');
      if (cachedData != null) {
        final List<dynamic> countriesJson = jsonDecode(cachedData);
        return countriesJson
            .map((countryJson) => Country.fromJson(jsonDecode(countryJson)))
            .toList();
      }
      return null;
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  @override
  Future<CountryDetail?> getCachedCountryDetail(String name) async {
    try {
      final cachedData = countryDetailsBox.get(name);
      if (cachedData != null) {
        return CountryDetail.fromJson(jsonDecode(cachedData));
      }
      return null;
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }
}
