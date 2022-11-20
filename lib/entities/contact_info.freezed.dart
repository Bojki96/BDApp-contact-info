// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contact_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactInfo _$ContactInfoFromJson(Map<String, dynamic> json) {
  return _ContactInfo.fromJson(json);
}

/// @nodoc
mixin _$ContactInfo {
  String get companyName => throw _privateConstructorUsedError;
  String get person => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactInfoCopyWith<ContactInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactInfoCopyWith<$Res> {
  factory $ContactInfoCopyWith(
          ContactInfo value, $Res Function(ContactInfo) then) =
      _$ContactInfoCopyWithImpl<$Res>;
  $Res call(
      {String companyName,
      String person,
      String email,
      String city,
      String country});
}

/// @nodoc
class _$ContactInfoCopyWithImpl<$Res> implements $ContactInfoCopyWith<$Res> {
  _$ContactInfoCopyWithImpl(this._value, this._then);

  final ContactInfo _value;
  // ignore: unused_field
  final $Res Function(ContactInfo) _then;

  @override
  $Res call({
    Object? companyName = freezed,
    Object? person = freezed,
    Object? email = freezed,
    Object? city = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      person: person == freezed
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ContactInfoCopyWith<$Res>
    implements $ContactInfoCopyWith<$Res> {
  factory _$$_ContactInfoCopyWith(
          _$_ContactInfo value, $Res Function(_$_ContactInfo) then) =
      __$$_ContactInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String companyName,
      String person,
      String email,
      String city,
      String country});
}

/// @nodoc
class __$$_ContactInfoCopyWithImpl<$Res> extends _$ContactInfoCopyWithImpl<$Res>
    implements _$$_ContactInfoCopyWith<$Res> {
  __$$_ContactInfoCopyWithImpl(
      _$_ContactInfo _value, $Res Function(_$_ContactInfo) _then)
      : super(_value, (v) => _then(v as _$_ContactInfo));

  @override
  _$_ContactInfo get _value => super._value as _$_ContactInfo;

  @override
  $Res call({
    Object? companyName = freezed,
    Object? person = freezed,
    Object? email = freezed,
    Object? city = freezed,
    Object? country = freezed,
  }) {
    return _then(_$_ContactInfo(
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      person: person == freezed
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactInfo implements _ContactInfo {
  const _$_ContactInfo(
      {required this.companyName,
      required this.person,
      required this.email,
      required this.city,
      required this.country});

  factory _$_ContactInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ContactInfoFromJson(json);

  @override
  final String companyName;
  @override
  final String person;
  @override
  final String email;
  @override
  final String city;
  @override
  final String country;

  @override
  String toString() {
    return 'ContactInfo(companyName: $companyName, person: $person, email: $email, city: $city, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactInfo &&
            const DeepCollectionEquality()
                .equals(other.companyName, companyName) &&
            const DeepCollectionEquality().equals(other.person, person) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.country, country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(companyName),
      const DeepCollectionEquality().hash(person),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(country));

  @JsonKey(ignore: true)
  @override
  _$$_ContactInfoCopyWith<_$_ContactInfo> get copyWith =>
      __$$_ContactInfoCopyWithImpl<_$_ContactInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactInfoToJson(
      this,
    );
  }
}

abstract class _ContactInfo implements ContactInfo {
  const factory _ContactInfo(
      {required final String companyName,
      required final String person,
      required final String email,
      required final String city,
      required final String country}) = _$_ContactInfo;

  factory _ContactInfo.fromJson(Map<String, dynamic> json) =
      _$_ContactInfo.fromJson;

  @override
  String get companyName;
  @override
  String get person;
  @override
  String get email;
  @override
  String get city;
  @override
  String get country;
  @override
  @JsonKey(ignore: true)
  _$$_ContactInfoCopyWith<_$_ContactInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
