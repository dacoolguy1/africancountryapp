// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_detail.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CountryDetailImplAdapter extends TypeAdapter<_$CountryDetailImpl> {
  @override
  final int typeId = 3;

  @override
  _$CountryDetailImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$CountryDetailImpl(
      name: fields[0] as Name,
      languages: (fields[1] as Map?)?.cast<String, String>(),
      capital: (fields[2] as List?)?.cast<String>(),
      flags: fields[3] as Flags,
      currencies: (fields[4] as Map?)?.cast<String, Currency>(),
      region: fields[5] as String,
      subregion: fields[6] as String,
      population: fields[7] as int,
      borders: (fields[8] as List?)?.cast<String>(),
      cca3: fields[9] as String?,
      maps: (fields[10] as Map?)?.cast<String, dynamic>(),
      independent: fields[11] as bool,
      unMember: fields[12] as bool,
      translations: (fields[13] as Map?)?.cast<String, Translation>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$CountryDetailImpl obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.flags)
      ..writeByte(5)
      ..write(obj.region)
      ..writeByte(6)
      ..write(obj.subregion)
      ..writeByte(7)
      ..write(obj.population)
      ..writeByte(9)
      ..write(obj.cca3)
      ..writeByte(11)
      ..write(obj.independent)
      ..writeByte(12)
      ..write(obj.unMember)
      ..writeByte(1)
      ..write(obj.languages)
      ..writeByte(2)
      ..write(obj.capital)
      ..writeByte(4)
      ..write(obj.currencies)
      ..writeByte(8)
      ..write(obj.borders)
      ..writeByte(10)
      ..write(obj.maps)
      ..writeByte(13)
      ..write(obj.translations);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CountryDetailImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CurrencyImplAdapter extends TypeAdapter<_$CurrencyImpl> {
  @override
  final int typeId = 4;

  @override
  _$CurrencyImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$CurrencyImpl(
      name: fields[0] as String,
      symbol: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$CurrencyImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.symbol);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrencyImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TranslationImplAdapter extends TypeAdapter<_$TranslationImpl> {
  @override
  final int typeId = 5;

  @override
  _$TranslationImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$TranslationImpl(
      official: fields[0] as String,
      common: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$TranslationImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.official)
      ..writeByte(1)
      ..write(obj.common);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TranslationImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryDetailImpl _$$CountryDetailImplFromJson(Map<String, dynamic> json) =>
    _$CountryDetailImpl(
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      languages: (json['languages'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      capital:
          (json['capital'] as List<dynamic>?)?.map((e) => e as String).toList(),
      flags: Flags.fromJson(json['flags'] as Map<String, dynamic>),
      currencies: (json['currencies'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Currency.fromJson(e as Map<String, dynamic>)),
      ),
      region: json['region'] as String,
      subregion: json['subregion'] as String,
      population: (json['population'] as num).toInt(),
      borders:
          (json['borders'] as List<dynamic>?)?.map((e) => e as String).toList(),
      cca3: json['cca3'] as String?,
      maps: json['maps'] as Map<String, dynamic>?,
      independent: json['independent'] as bool,
      unMember: json['unMember'] as bool,
      translations: (json['translations'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Translation.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$CountryDetailImplToJson(_$CountryDetailImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'languages': instance.languages,
      'capital': instance.capital,
      'flags': instance.flags,
      'currencies': instance.currencies,
      'region': instance.region,
      'subregion': instance.subregion,
      'population': instance.population,
      'borders': instance.borders,
      'cca3': instance.cca3,
      'maps': instance.maps,
      'independent': instance.independent,
      'unMember': instance.unMember,
      'translations': instance.translations,
    };

_$CurrencyImpl _$$CurrencyImplFromJson(Map<String, dynamic> json) =>
    _$CurrencyImpl(
      name: json['name'] as String,
      symbol: json['symbol'] as String,
    );

Map<String, dynamic> _$$CurrencyImplToJson(_$CurrencyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'symbol': instance.symbol,
    };

_$TranslationImpl _$$TranslationImplFromJson(Map<String, dynamic> json) =>
    _$TranslationImpl(
      official: json['official'] as String,
      common: json['common'] as String,
    );

Map<String, dynamic> _$$TranslationImplToJson(_$TranslationImpl instance) =>
    <String, dynamic>{
      'official': instance.official,
      'common': instance.common,
    };
