// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountryDetail _$CountryDetailFromJson(Map<String, dynamic> json) {
  return _CountryDetail.fromJson(json);
}

/// @nodoc
mixin _$CountryDetail {
  @HiveField(0)
  Name get name => throw _privateConstructorUsedError;
  @HiveField(1)
  Map<String, String>? get languages => throw _privateConstructorUsedError;
  @HiveField(2)
  List<String>? get capital => throw _privateConstructorUsedError;
  @HiveField(3)
  Flags get flags => throw _privateConstructorUsedError;
  @HiveField(4)
  Map<String, Currency>? get currencies =>
      throw _privateConstructorUsedError; // Changed from List to Map
  @HiveField(5)
  String get region => throw _privateConstructorUsedError;
  @HiveField(6)
  String get subregion => throw _privateConstructorUsedError;
  @HiveField(7)
  int get population => throw _privateConstructorUsedError;
  @HiveField(8)
  List<String>? get borders => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get cca3 => throw _privateConstructorUsedError;
  @HiveField(10)
  Map<String, dynamic>? get maps => throw _privateConstructorUsedError;
  @HiveField(11)
  bool get independent => throw _privateConstructorUsedError;
  @HiveField(12)
  bool get unMember => throw _privateConstructorUsedError;
  @HiveField(13)
  Map<String, Translation>? get translations =>
      throw _privateConstructorUsedError;

  /// Serializes this CountryDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CountryDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryDetailCopyWith<CountryDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryDetailCopyWith<$Res> {
  factory $CountryDetailCopyWith(
          CountryDetail value, $Res Function(CountryDetail) then) =
      _$CountryDetailCopyWithImpl<$Res, CountryDetail>;
  @useResult
  $Res call(
      {@HiveField(0) Name name,
      @HiveField(1) Map<String, String>? languages,
      @HiveField(2) List<String>? capital,
      @HiveField(3) Flags flags,
      @HiveField(4) Map<String, Currency>? currencies,
      @HiveField(5) String region,
      @HiveField(6) String subregion,
      @HiveField(7) int population,
      @HiveField(8) List<String>? borders,
      @HiveField(9) String? cca3,
      @HiveField(10) Map<String, dynamic>? maps,
      @HiveField(11) bool independent,
      @HiveField(12) bool unMember,
      @HiveField(13) Map<String, Translation>? translations});

  $NameCopyWith<$Res> get name;
  $FlagsCopyWith<$Res> get flags;
}

/// @nodoc
class _$CountryDetailCopyWithImpl<$Res, $Val extends CountryDetail>
    implements $CountryDetailCopyWith<$Res> {
  _$CountryDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? languages = freezed,
    Object? capital = freezed,
    Object? flags = null,
    Object? currencies = freezed,
    Object? region = null,
    Object? subregion = null,
    Object? population = null,
    Object? borders = freezed,
    Object? cca3 = freezed,
    Object? maps = freezed,
    Object? independent = null,
    Object? unMember = null,
    Object? translations = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      capital: freezed == capital
          ? _value.capital
          : capital // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as Flags,
      currencies: freezed == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as Map<String, Currency>?,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      subregion: null == subregion
          ? _value.subregion
          : subregion // ignore: cast_nullable_to_non_nullable
              as String,
      population: null == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
      borders: freezed == borders
          ? _value.borders
          : borders // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      cca3: freezed == cca3
          ? _value.cca3
          : cca3 // ignore: cast_nullable_to_non_nullable
              as String?,
      maps: freezed == maps
          ? _value.maps
          : maps // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      independent: null == independent
          ? _value.independent
          : independent // ignore: cast_nullable_to_non_nullable
              as bool,
      unMember: null == unMember
          ? _value.unMember
          : unMember // ignore: cast_nullable_to_non_nullable
              as bool,
      translations: freezed == translations
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as Map<String, Translation>?,
    ) as $Val);
  }

  /// Create a copy of CountryDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NameCopyWith<$Res> get name {
    return $NameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  /// Create a copy of CountryDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FlagsCopyWith<$Res> get flags {
    return $FlagsCopyWith<$Res>(_value.flags, (value) {
      return _then(_value.copyWith(flags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CountryDetailImplCopyWith<$Res>
    implements $CountryDetailCopyWith<$Res> {
  factory _$$CountryDetailImplCopyWith(
          _$CountryDetailImpl value, $Res Function(_$CountryDetailImpl) then) =
      __$$CountryDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) Name name,
      @HiveField(1) Map<String, String>? languages,
      @HiveField(2) List<String>? capital,
      @HiveField(3) Flags flags,
      @HiveField(4) Map<String, Currency>? currencies,
      @HiveField(5) String region,
      @HiveField(6) String subregion,
      @HiveField(7) int population,
      @HiveField(8) List<String>? borders,
      @HiveField(9) String? cca3,
      @HiveField(10) Map<String, dynamic>? maps,
      @HiveField(11) bool independent,
      @HiveField(12) bool unMember,
      @HiveField(13) Map<String, Translation>? translations});

  @override
  $NameCopyWith<$Res> get name;
  @override
  $FlagsCopyWith<$Res> get flags;
}

/// @nodoc
class __$$CountryDetailImplCopyWithImpl<$Res>
    extends _$CountryDetailCopyWithImpl<$Res, _$CountryDetailImpl>
    implements _$$CountryDetailImplCopyWith<$Res> {
  __$$CountryDetailImplCopyWithImpl(
      _$CountryDetailImpl _value, $Res Function(_$CountryDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? languages = freezed,
    Object? capital = freezed,
    Object? flags = null,
    Object? currencies = freezed,
    Object? region = null,
    Object? subregion = null,
    Object? population = null,
    Object? borders = freezed,
    Object? cca3 = freezed,
    Object? maps = freezed,
    Object? independent = null,
    Object? unMember = null,
    Object? translations = freezed,
  }) {
    return _then(_$CountryDetailImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      languages: freezed == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      capital: freezed == capital
          ? _value._capital
          : capital // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as Flags,
      currencies: freezed == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as Map<String, Currency>?,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      subregion: null == subregion
          ? _value.subregion
          : subregion // ignore: cast_nullable_to_non_nullable
              as String,
      population: null == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
      borders: freezed == borders
          ? _value._borders
          : borders // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      cca3: freezed == cca3
          ? _value.cca3
          : cca3 // ignore: cast_nullable_to_non_nullable
              as String?,
      maps: freezed == maps
          ? _value._maps
          : maps // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      independent: null == independent
          ? _value.independent
          : independent // ignore: cast_nullable_to_non_nullable
              as bool,
      unMember: null == unMember
          ? _value.unMember
          : unMember // ignore: cast_nullable_to_non_nullable
              as bool,
      translations: freezed == translations
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as Map<String, Translation>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 3)
class _$CountryDetailImpl implements _CountryDetail {
  _$CountryDetailImpl(
      {@HiveField(0) required this.name,
      @HiveField(1) required final Map<String, String>? languages,
      @HiveField(2) required final List<String>? capital,
      @HiveField(3) required this.flags,
      @HiveField(4) required final Map<String, Currency>? currencies,
      @HiveField(5) required this.region,
      @HiveField(6) required this.subregion,
      @HiveField(7) required this.population,
      @HiveField(8) final List<String>? borders,
      @HiveField(9) required this.cca3,
      @HiveField(10) required final Map<String, dynamic>? maps,
      @HiveField(11) required this.independent,
      @HiveField(12) required this.unMember,
      @HiveField(13) required final Map<String, Translation>? translations})
      : _languages = languages,
        _capital = capital,
        _currencies = currencies,
        _borders = borders,
        _maps = maps,
        _translations = translations;

  factory _$CountryDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryDetailImplFromJson(json);

  @override
  @HiveField(0)
  final Name name;
  final Map<String, String>? _languages;
  @override
  @HiveField(1)
  Map<String, String>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableMapView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<String>? _capital;
  @override
  @HiveField(2)
  List<String>? get capital {
    final value = _capital;
    if (value == null) return null;
    if (_capital is EqualUnmodifiableListView) return _capital;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(3)
  final Flags flags;
  final Map<String, Currency>? _currencies;
  @override
  @HiveField(4)
  Map<String, Currency>? get currencies {
    final value = _currencies;
    if (value == null) return null;
    if (_currencies is EqualUnmodifiableMapView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

// Changed from List to Map
  @override
  @HiveField(5)
  final String region;
  @override
  @HiveField(6)
  final String subregion;
  @override
  @HiveField(7)
  final int population;
  final List<String>? _borders;
  @override
  @HiveField(8)
  List<String>? get borders {
    final value = _borders;
    if (value == null) return null;
    if (_borders is EqualUnmodifiableListView) return _borders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(9)
  final String? cca3;
  final Map<String, dynamic>? _maps;
  @override
  @HiveField(10)
  Map<String, dynamic>? get maps {
    final value = _maps;
    if (value == null) return null;
    if (_maps is EqualUnmodifiableMapView) return _maps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @HiveField(11)
  final bool independent;
  @override
  @HiveField(12)
  final bool unMember;
  final Map<String, Translation>? _translations;
  @override
  @HiveField(13)
  Map<String, Translation>? get translations {
    final value = _translations;
    if (value == null) return null;
    if (_translations is EqualUnmodifiableMapView) return _translations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'CountryDetail(name: $name, languages: $languages, capital: $capital, flags: $flags, currencies: $currencies, region: $region, subregion: $subregion, population: $population, borders: $borders, cca3: $cca3, maps: $maps, independent: $independent, unMember: $unMember, translations: $translations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryDetailImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            const DeepCollectionEquality().equals(other._capital, _capital) &&
            (identical(other.flags, flags) || other.flags == flags) &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.subregion, subregion) ||
                other.subregion == subregion) &&
            (identical(other.population, population) ||
                other.population == population) &&
            const DeepCollectionEquality().equals(other._borders, _borders) &&
            (identical(other.cca3, cca3) || other.cca3 == cca3) &&
            const DeepCollectionEquality().equals(other._maps, _maps) &&
            (identical(other.independent, independent) ||
                other.independent == independent) &&
            (identical(other.unMember, unMember) ||
                other.unMember == unMember) &&
            const DeepCollectionEquality()
                .equals(other._translations, _translations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_languages),
      const DeepCollectionEquality().hash(_capital),
      flags,
      const DeepCollectionEquality().hash(_currencies),
      region,
      subregion,
      population,
      const DeepCollectionEquality().hash(_borders),
      cca3,
      const DeepCollectionEquality().hash(_maps),
      independent,
      unMember,
      const DeepCollectionEquality().hash(_translations));

  /// Create a copy of CountryDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryDetailImplCopyWith<_$CountryDetailImpl> get copyWith =>
      __$$CountryDetailImplCopyWithImpl<_$CountryDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryDetailImplToJson(
      this,
    );
  }
}

abstract class _CountryDetail implements CountryDetail {
  factory _CountryDetail(
          {@HiveField(0) required final Name name,
          @HiveField(1) required final Map<String, String>? languages,
          @HiveField(2) required final List<String>? capital,
          @HiveField(3) required final Flags flags,
          @HiveField(4) required final Map<String, Currency>? currencies,
          @HiveField(5) required final String region,
          @HiveField(6) required final String subregion,
          @HiveField(7) required final int population,
          @HiveField(8) final List<String>? borders,
          @HiveField(9) required final String? cca3,
          @HiveField(10) required final Map<String, dynamic>? maps,
          @HiveField(11) required final bool independent,
          @HiveField(12) required final bool unMember,
          @HiveField(13)
          required final Map<String, Translation>? translations}) =
      _$CountryDetailImpl;

  factory _CountryDetail.fromJson(Map<String, dynamic> json) =
      _$CountryDetailImpl.fromJson;

  @override
  @HiveField(0)
  Name get name;
  @override
  @HiveField(1)
  Map<String, String>? get languages;
  @override
  @HiveField(2)
  List<String>? get capital;
  @override
  @HiveField(3)
  Flags get flags;
  @override
  @HiveField(4)
  Map<String, Currency>? get currencies; // Changed from List to Map
  @override
  @HiveField(5)
  String get region;
  @override
  @HiveField(6)
  String get subregion;
  @override
  @HiveField(7)
  int get population;
  @override
  @HiveField(8)
  List<String>? get borders;
  @override
  @HiveField(9)
  String? get cca3;
  @override
  @HiveField(10)
  Map<String, dynamic>? get maps;
  @override
  @HiveField(11)
  bool get independent;
  @override
  @HiveField(12)
  bool get unMember;
  @override
  @HiveField(13)
  Map<String, Translation>? get translations;

  /// Create a copy of CountryDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryDetailImplCopyWith<_$CountryDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Currency _$CurrencyFromJson(Map<String, dynamic> json) {
  return _Currency.fromJson(json);
}

/// @nodoc
mixin _$Currency {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  String get symbol => throw _privateConstructorUsedError;

  /// Serializes this Currency to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrencyCopyWith<Currency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyCopyWith<$Res> {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) then) =
      _$CurrencyCopyWithImpl<$Res, Currency>;
  @useResult
  $Res call({@HiveField(0) String name, @HiveField(1) String symbol});
}

/// @nodoc
class _$CurrencyCopyWithImpl<$Res, $Val extends Currency>
    implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? symbol = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyImplCopyWith<$Res>
    implements $CurrencyCopyWith<$Res> {
  factory _$$CurrencyImplCopyWith(
          _$CurrencyImpl value, $Res Function(_$CurrencyImpl) then) =
      __$$CurrencyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String name, @HiveField(1) String symbol});
}

/// @nodoc
class __$$CurrencyImplCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$CurrencyImpl>
    implements _$$CurrencyImplCopyWith<$Res> {
  __$$CurrencyImplCopyWithImpl(
      _$CurrencyImpl _value, $Res Function(_$CurrencyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? symbol = null,
  }) {
    return _then(_$CurrencyImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 4)
class _$CurrencyImpl implements _Currency {
  _$CurrencyImpl(
      {@HiveField(0) required this.name, @HiveField(1) required this.symbol});

  factory _$CurrencyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrencyImplFromJson(json);

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final String symbol;

  @override
  String toString() {
    return 'Currency(name: $name, symbol: $symbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, symbol);

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyImplCopyWith<_$CurrencyImpl> get copyWith =>
      __$$CurrencyImplCopyWithImpl<_$CurrencyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrencyImplToJson(
      this,
    );
  }
}

abstract class _Currency implements Currency {
  factory _Currency(
      {@HiveField(0) required final String name,
      @HiveField(1) required final String symbol}) = _$CurrencyImpl;

  factory _Currency.fromJson(Map<String, dynamic> json) =
      _$CurrencyImpl.fromJson;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  String get symbol;

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrencyImplCopyWith<_$CurrencyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Translation _$TranslationFromJson(Map<String, dynamic> json) {
  return _Translation.fromJson(json);
}

/// @nodoc
mixin _$Translation {
  @HiveField(0)
  String get official => throw _privateConstructorUsedError;
  @HiveField(1)
  String get common => throw _privateConstructorUsedError;

  /// Serializes this Translation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Translation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TranslationCopyWith<Translation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationCopyWith<$Res> {
  factory $TranslationCopyWith(
          Translation value, $Res Function(Translation) then) =
      _$TranslationCopyWithImpl<$Res, Translation>;
  @useResult
  $Res call({@HiveField(0) String official, @HiveField(1) String common});
}

/// @nodoc
class _$TranslationCopyWithImpl<$Res, $Val extends Translation>
    implements $TranslationCopyWith<$Res> {
  _$TranslationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Translation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? official = null,
    Object? common = null,
  }) {
    return _then(_value.copyWith(
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as String,
      common: null == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TranslationImplCopyWith<$Res>
    implements $TranslationCopyWith<$Res> {
  factory _$$TranslationImplCopyWith(
          _$TranslationImpl value, $Res Function(_$TranslationImpl) then) =
      __$$TranslationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String official, @HiveField(1) String common});
}

/// @nodoc
class __$$TranslationImplCopyWithImpl<$Res>
    extends _$TranslationCopyWithImpl<$Res, _$TranslationImpl>
    implements _$$TranslationImplCopyWith<$Res> {
  __$$TranslationImplCopyWithImpl(
      _$TranslationImpl _value, $Res Function(_$TranslationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Translation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? official = null,
    Object? common = null,
  }) {
    return _then(_$TranslationImpl(
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as String,
      common: null == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 5)
class _$TranslationImpl implements _Translation {
  _$TranslationImpl(
      {@HiveField(0) required this.official,
      @HiveField(1) required this.common});

  factory _$TranslationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslationImplFromJson(json);

  @override
  @HiveField(0)
  final String official;
  @override
  @HiveField(1)
  final String common;

  @override
  String toString() {
    return 'Translation(official: $official, common: $common)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslationImpl &&
            (identical(other.official, official) ||
                other.official == official) &&
            (identical(other.common, common) || other.common == common));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, official, common);

  /// Create a copy of Translation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslationImplCopyWith<_$TranslationImpl> get copyWith =>
      __$$TranslationImplCopyWithImpl<_$TranslationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslationImplToJson(
      this,
    );
  }
}

abstract class _Translation implements Translation {
  factory _Translation(
      {@HiveField(0) required final String official,
      @HiveField(1) required final String common}) = _$TranslationImpl;

  factory _Translation.fromJson(Map<String, dynamic> json) =
      _$TranslationImpl.fromJson;

  @override
  @HiveField(0)
  String get official;
  @override
  @HiveField(1)
  String get common;

  /// Create a copy of Translation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TranslationImplCopyWith<_$TranslationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
