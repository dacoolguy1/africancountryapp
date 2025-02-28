import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country {
  @HiveType(typeId: 0)
  factory Country({
    @HiveField(0) required Name name,
    @HiveField(1) required Map<String, String>? languages,
    @HiveField(2) required List<String>? capital,
    @HiveField(3) required Flags flags,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}

@freezed
class Name with _$Name {
  @HiveType(typeId: 1)
  factory Name({
    @HiveField(0) required String common,
    @HiveField(1) required String official,
  }) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}

@freezed
class Flags with _$Flags {
  @HiveType(typeId: 2)
  factory Flags({
    @HiveField(0) required String png,
    @HiveField(1) required String svg,
    @HiveField(2) String? alt,
  }) = _Flags;

  factory Flags.fromJson(Map<String, dynamic> json) => _$FlagsFromJson(json);
}
