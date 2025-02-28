import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'country.dart';

part 'country_detail.freezed.dart';
part 'country_detail.g.dart';

@freezed
class CountryDetail with _$CountryDetail {
  @HiveType(typeId: 3)
  factory CountryDetail({
    @HiveField(0) required Name name,
    @HiveField(1) required Map<String, String>? languages,
    @HiveField(2) required List<String>? capital,
    @HiveField(3) required Flags flags,
    @HiveField(4)
    required Map<String, Currency>? currencies, // Changed from List to Map
    @HiveField(5) required String region,
    @HiveField(6) required String subregion,
    @HiveField(7) required int population,
    @HiveField(8) List<String>? borders,
    @HiveField(9) required String? cca3,
    @HiveField(10) required Map<String, dynamic>? maps,
    @HiveField(11) required bool independent,
    @HiveField(12) required bool unMember,
    @HiveField(13) required Map<String, Translation>? translations,
  }) = _CountryDetail;

  factory CountryDetail.fromJson(Map<String, dynamic> json) =>
      _$CountryDetailFromJson(json);
}

@freezed
class Currency with _$Currency {
  @HiveType(typeId: 4)
  factory Currency({
    @HiveField(0) required String name,
    @HiveField(1) required String symbol,
  }) = _Currency;

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);
}

@freezed
class Translation with _$Translation {
  @HiveType(typeId: 5)
  factory Translation({
    @HiveField(0) required String official,
    @HiveField(1) required String common,
  }) = _Translation;

  factory Translation.fromJson(Map<String, dynamic> json) =>
      _$TranslationFromJson(json);
}
