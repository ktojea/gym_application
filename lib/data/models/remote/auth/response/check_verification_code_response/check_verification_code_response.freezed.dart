// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_verification_code_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckVerificationCodeResponse _$CheckVerificationCodeResponseFromJson(
    Map<String, dynamic> json) {
  return _CheckVerificationCodeResponse.fromJson(json);
}

/// @nodoc
mixin _$CheckVerificationCodeResponse {
  String get accessToken => throw _privateConstructorUsedError;
  String get tokenType => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckVerificationCodeResponseCopyWith<CheckVerificationCodeResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckVerificationCodeResponseCopyWith<$Res> {
  factory $CheckVerificationCodeResponseCopyWith(
          CheckVerificationCodeResponse value,
          $Res Function(CheckVerificationCodeResponse) then) =
      _$CheckVerificationCodeResponseCopyWithImpl<$Res,
          CheckVerificationCodeResponse>;
  @useResult
  $Res call({String accessToken, String tokenType, String userId});
}

/// @nodoc
class _$CheckVerificationCodeResponseCopyWithImpl<$Res,
        $Val extends CheckVerificationCodeResponse>
    implements $CheckVerificationCodeResponseCopyWith<$Res> {
  _$CheckVerificationCodeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? tokenType = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckVerificationCodeResponseImplCopyWith<$Res>
    implements $CheckVerificationCodeResponseCopyWith<$Res> {
  factory _$$CheckVerificationCodeResponseImplCopyWith(
          _$CheckVerificationCodeResponseImpl value,
          $Res Function(_$CheckVerificationCodeResponseImpl) then) =
      __$$CheckVerificationCodeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String tokenType, String userId});
}

/// @nodoc
class __$$CheckVerificationCodeResponseImplCopyWithImpl<$Res>
    extends _$CheckVerificationCodeResponseCopyWithImpl<$Res,
        _$CheckVerificationCodeResponseImpl>
    implements _$$CheckVerificationCodeResponseImplCopyWith<$Res> {
  __$$CheckVerificationCodeResponseImplCopyWithImpl(
      _$CheckVerificationCodeResponseImpl _value,
      $Res Function(_$CheckVerificationCodeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? tokenType = null,
    Object? userId = null,
  }) {
    return _then(_$CheckVerificationCodeResponseImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckVerificationCodeResponseImpl
    implements _CheckVerificationCodeResponse {
  const _$CheckVerificationCodeResponseImpl(
      {required this.accessToken,
      required this.tokenType,
      required this.userId});

  factory _$CheckVerificationCodeResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CheckVerificationCodeResponseImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String tokenType;
  @override
  final String userId;

  @override
  String toString() {
    return 'CheckVerificationCodeResponse(accessToken: $accessToken, tokenType: $tokenType, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckVerificationCodeResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, tokenType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckVerificationCodeResponseImplCopyWith<
          _$CheckVerificationCodeResponseImpl>
      get copyWith => __$$CheckVerificationCodeResponseImplCopyWithImpl<
          _$CheckVerificationCodeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckVerificationCodeResponseImplToJson(
      this,
    );
  }
}

abstract class _CheckVerificationCodeResponse
    implements CheckVerificationCodeResponse {
  const factory _CheckVerificationCodeResponse(
      {required final String accessToken,
      required final String tokenType,
      required final String userId}) = _$CheckVerificationCodeResponseImpl;

  factory _CheckVerificationCodeResponse.fromJson(Map<String, dynamic> json) =
      _$CheckVerificationCodeResponseImpl.fromJson;

  @override
  String get accessToken;
  @override
  String get tokenType;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$CheckVerificationCodeResponseImplCopyWith<
          _$CheckVerificationCodeResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
