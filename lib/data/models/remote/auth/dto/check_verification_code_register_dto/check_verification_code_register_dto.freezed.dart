// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_verification_code_register_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckVerificationCodeRegisterDTO _$CheckVerificationCodeRegisterDTOFromJson(
    Map<String, dynamic> json) {
  return _CheckVerificationCodeRegisterDTO.fromJson(json);
}

/// @nodoc
mixin _$CheckVerificationCodeRegisterDTO {
  String get phoneNumber => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get verificationCode => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;

  /// Serializes this CheckVerificationCodeRegisterDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckVerificationCodeRegisterDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckVerificationCodeRegisterDTOCopyWith<CheckVerificationCodeRegisterDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckVerificationCodeRegisterDTOCopyWith<$Res> {
  factory $CheckVerificationCodeRegisterDTOCopyWith(
          CheckVerificationCodeRegisterDTO value,
          $Res Function(CheckVerificationCodeRegisterDTO) then) =
      _$CheckVerificationCodeRegisterDTOCopyWithImpl<$Res,
          CheckVerificationCodeRegisterDTO>;
  @useResult
  $Res call(
      {String phoneNumber,
      String password,
      String verificationCode,
      String name,
      String surname});
}

/// @nodoc
class _$CheckVerificationCodeRegisterDTOCopyWithImpl<$Res,
        $Val extends CheckVerificationCodeRegisterDTO>
    implements $CheckVerificationCodeRegisterDTOCopyWith<$Res> {
  _$CheckVerificationCodeRegisterDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckVerificationCodeRegisterDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? password = null,
    Object? verificationCode = null,
    Object? name = null,
    Object? surname = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      verificationCode: null == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckVerificationCodeRegisterDTOImplCopyWith<$Res>
    implements $CheckVerificationCodeRegisterDTOCopyWith<$Res> {
  factory _$$CheckVerificationCodeRegisterDTOImplCopyWith(
          _$CheckVerificationCodeRegisterDTOImpl value,
          $Res Function(_$CheckVerificationCodeRegisterDTOImpl) then) =
      __$$CheckVerificationCodeRegisterDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String phoneNumber,
      String password,
      String verificationCode,
      String name,
      String surname});
}

/// @nodoc
class __$$CheckVerificationCodeRegisterDTOImplCopyWithImpl<$Res>
    extends _$CheckVerificationCodeRegisterDTOCopyWithImpl<$Res,
        _$CheckVerificationCodeRegisterDTOImpl>
    implements _$$CheckVerificationCodeRegisterDTOImplCopyWith<$Res> {
  __$$CheckVerificationCodeRegisterDTOImplCopyWithImpl(
      _$CheckVerificationCodeRegisterDTOImpl _value,
      $Res Function(_$CheckVerificationCodeRegisterDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckVerificationCodeRegisterDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? password = null,
    Object? verificationCode = null,
    Object? name = null,
    Object? surname = null,
  }) {
    return _then(_$CheckVerificationCodeRegisterDTOImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      verificationCode: null == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckVerificationCodeRegisterDTOImpl
    implements _CheckVerificationCodeRegisterDTO {
  const _$CheckVerificationCodeRegisterDTOImpl(
      {required this.phoneNumber,
      required this.password,
      required this.verificationCode,
      required this.name,
      required this.surname});

  factory _$CheckVerificationCodeRegisterDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CheckVerificationCodeRegisterDTOImplFromJson(json);

  @override
  final String phoneNumber;
  @override
  final String password;
  @override
  final String verificationCode;
  @override
  final String name;
  @override
  final String surname;

  @override
  String toString() {
    return 'CheckVerificationCodeRegisterDTO(phoneNumber: $phoneNumber, password: $password, verificationCode: $verificationCode, name: $name, surname: $surname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckVerificationCodeRegisterDTOImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.verificationCode, verificationCode) ||
                other.verificationCode == verificationCode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, phoneNumber, password, verificationCode, name, surname);

  /// Create a copy of CheckVerificationCodeRegisterDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckVerificationCodeRegisterDTOImplCopyWith<
          _$CheckVerificationCodeRegisterDTOImpl>
      get copyWith => __$$CheckVerificationCodeRegisterDTOImplCopyWithImpl<
          _$CheckVerificationCodeRegisterDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckVerificationCodeRegisterDTOImplToJson(
      this,
    );
  }
}

abstract class _CheckVerificationCodeRegisterDTO
    implements CheckVerificationCodeRegisterDTO {
  const factory _CheckVerificationCodeRegisterDTO(
      {required final String phoneNumber,
      required final String password,
      required final String verificationCode,
      required final String name,
      required final String surname}) = _$CheckVerificationCodeRegisterDTOImpl;

  factory _CheckVerificationCodeRegisterDTO.fromJson(
          Map<String, dynamic> json) =
      _$CheckVerificationCodeRegisterDTOImpl.fromJson;

  @override
  String get phoneNumber;
  @override
  String get password;
  @override
  String get verificationCode;
  @override
  String get name;
  @override
  String get surname;

  /// Create a copy of CheckVerificationCodeRegisterDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckVerificationCodeRegisterDTOImplCopyWith<
          _$CheckVerificationCodeRegisterDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
