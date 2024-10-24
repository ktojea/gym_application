// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return _UserInfo.fromJson(json);
}

/// @nodoc
mixin _$UserInfo {
  String get sex => throw _privateConstructorUsedError;
  DateTime get dateOfBirthday => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  String get trainingLevel => throw _privateConstructorUsedError;
  int get trainingFrequency => throw _privateConstructorUsedError;

  /// Serializes this UserInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserInfoCopyWith<UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) =
      _$UserInfoCopyWithImpl<$Res, UserInfo>;
  @useResult
  $Res call(
      {String sex,
      DateTime dateOfBirthday,
      String? imageUrl,
      double weight,
      int height,
      String trainingLevel,
      int trainingFrequency});
}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res, $Val extends UserInfo>
    implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? dateOfBirthday = null,
    Object? imageUrl = freezed,
    Object? weight = null,
    Object? height = null,
    Object? trainingLevel = null,
    Object? trainingFrequency = null,
  }) {
    return _then(_value.copyWith(
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirthday: null == dateOfBirthday
          ? _value.dateOfBirthday
          : dateOfBirthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      trainingLevel: null == trainingLevel
          ? _value.trainingLevel
          : trainingLevel // ignore: cast_nullable_to_non_nullable
              as String,
      trainingFrequency: null == trainingFrequency
          ? _value.trainingFrequency
          : trainingFrequency // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoImplCopyWith<$Res>
    implements $UserInfoCopyWith<$Res> {
  factory _$$UserInfoImplCopyWith(
          _$UserInfoImpl value, $Res Function(_$UserInfoImpl) then) =
      __$$UserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sex,
      DateTime dateOfBirthday,
      String? imageUrl,
      double weight,
      int height,
      String trainingLevel,
      int trainingFrequency});
}

/// @nodoc
class __$$UserInfoImplCopyWithImpl<$Res>
    extends _$UserInfoCopyWithImpl<$Res, _$UserInfoImpl>
    implements _$$UserInfoImplCopyWith<$Res> {
  __$$UserInfoImplCopyWithImpl(
      _$UserInfoImpl _value, $Res Function(_$UserInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
    Object? dateOfBirthday = null,
    Object? imageUrl = freezed,
    Object? weight = null,
    Object? height = null,
    Object? trainingLevel = null,
    Object? trainingFrequency = null,
  }) {
    return _then(_$UserInfoImpl(
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirthday: null == dateOfBirthday
          ? _value.dateOfBirthday
          : dateOfBirthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      trainingLevel: null == trainingLevel
          ? _value.trainingLevel
          : trainingLevel // ignore: cast_nullable_to_non_nullable
              as String,
      trainingFrequency: null == trainingFrequency
          ? _value.trainingFrequency
          : trainingFrequency // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoImpl extends _UserInfo {
  const _$UserInfoImpl(
      {required this.sex,
      required this.dateOfBirthday,
      required this.imageUrl,
      required this.weight,
      required this.height,
      required this.trainingLevel,
      required this.trainingFrequency})
      : super._();

  factory _$UserInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoImplFromJson(json);

  @override
  final String sex;
  @override
  final DateTime dateOfBirthday;
  @override
  final String? imageUrl;
  @override
  final double weight;
  @override
  final int height;
  @override
  final String trainingLevel;
  @override
  final int trainingFrequency;

  @override
  String toString() {
    return 'UserInfo(sex: $sex, dateOfBirthday: $dateOfBirthday, imageUrl: $imageUrl, weight: $weight, height: $height, trainingLevel: $trainingLevel, trainingFrequency: $trainingFrequency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoImpl &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.dateOfBirthday, dateOfBirthday) ||
                other.dateOfBirthday == dateOfBirthday) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.trainingLevel, trainingLevel) ||
                other.trainingLevel == trainingLevel) &&
            (identical(other.trainingFrequency, trainingFrequency) ||
                other.trainingFrequency == trainingFrequency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sex, dateOfBirthday, imageUrl,
      weight, height, trainingLevel, trainingFrequency);

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      __$$UserInfoImplCopyWithImpl<_$UserInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoImplToJson(
      this,
    );
  }
}

abstract class _UserInfo extends UserInfo {
  const factory _UserInfo(
      {required final String sex,
      required final DateTime dateOfBirthday,
      required final String? imageUrl,
      required final double weight,
      required final int height,
      required final String trainingLevel,
      required final int trainingFrequency}) = _$UserInfoImpl;
  const _UserInfo._() : super._();

  factory _UserInfo.fromJson(Map<String, dynamic> json) =
      _$UserInfoImpl.fromJson;

  @override
  String get sex;
  @override
  DateTime get dateOfBirthday;
  @override
  String? get imageUrl;
  @override
  double get weight;
  @override
  int get height;
  @override
  String get trainingLevel;
  @override
  int get trainingFrequency;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
