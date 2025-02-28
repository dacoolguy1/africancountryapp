// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CountryImplAdapter extends TypeAdapter<_$CountryImpl> {
  @override
  final int typeId = 0;

  @override
  _$CountryImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$CountryImpl(
      name: fields[0] as Name,
      languages: (fields[1] as Map?)?.cast<String, String>(),
      capital: (fields[2] as List?)?.cast<String>(),
      flags: fields[3] as Flags,
    );
  }

  @override
  void write(BinaryWriter writer, _$CountryImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.flags)
      ..writeByte(1)
      ..write(obj.languages)
      ..writeByte(2)
      ..write(obj.capital);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CountryImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NameImplAdapter extends TypeAdapter<_$NameImpl> {
  @override
  final int typeId = 1;

  @override
  _$NameImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$NameImpl(
      common: fields[0] as String,
      official: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$NameImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.common)
      ..writeByte(1)
      ..write(obj.official);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NameImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FlagsImplAdapter extends TypeAdapter<_$FlagsImpl> {
  @override
  final int typeId = 2;

  @override
  _$FlagsImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$FlagsImpl(
      png: fields[0] as String,
      svg: fields[1] as String,
      alt: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$FlagsImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.png)
      ..writeByte(1)
      ..write(obj.svg)
      ..writeByte(2)
      ..write(obj.alt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FlagsImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryImpl _$$CountryImplFromJson(Map<String, dynamic> json) =>
    _$CountryImpl(
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      languages: (json['languages'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      capital:
          (json['capital'] as List<dynamic>?)?.map((e) => e as String).toList(),
      flags: Flags.fromJson(json['flags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CountryImplToJson(_$CountryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'languages': instance.languages,
      'capital': instance.capital,
      'flags': instance.flags,
    };

_$NameImpl _$$NameImplFromJson(Map<String, dynamic> json) => _$NameImpl(
      common: json['common'] as String,
      official: json['official'] as String,
    );

Map<String, dynamic> _$$NameImplToJson(_$NameImpl instance) =>
    <String, dynamic>{
      'common': instance.common,
      'official': instance.official,
    };

_$FlagsImpl _$$FlagsImplFromJson(Map<String, dynamic> json) => _$FlagsImpl(
      png: json['png'] as String,
      svg: json['svg'] as String,
      alt: json['alt'] as String?,
    );

Map<String, dynamic> _$$FlagsImplToJson(_$FlagsImpl instance) =>
    <String, dynamic>{
      'png': instance.png,
      'svg': instance.svg,
      'alt': instance.alt,
    };
