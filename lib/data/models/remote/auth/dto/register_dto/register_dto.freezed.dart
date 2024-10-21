// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterDTO _$RegisterDTOFromJson(Map<String, dynamic> json) {
  return _RegisterDTO.fromJson(json);
}

/// @nodoc
mixin _$RegisterDTO {
  String get phoneNumber => throw _privateConstructorUsedError;

  /// Serializes this RegisterDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterDTOCopyWith<RegisterDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDTOCopyWith<$Res> {
  factory $RegisterDTOCopyWith(
          RegisterDTO value, $Res Function(RegisterDTO) then) =
      _$RegisterDTOCopyWithImpl<$Res, RegisterDTO>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class _$RegisterDTOCopyWithImpl<$Res, $Val extends RegisterDTO>
    implements $RegisterDTOCopyWith<$Res> {
  _$RegisterDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterDTOImplCopyWith<$Res>
    implements $RegisterDTOCopyWith<$Res> {
  factory _$$RegisterDTOImplCopyWith(
          _$RegisterDTOImpl value, $Res Function(_$RegisterDTOImpl) then) =
      __$$RegisterDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$RegisterDTOImplCopyWithImpl<$Res>
    extends _$RegisterDTOCopyWithImpl<$Res, _$RegisterDTOImpl>
    implements _$$RegisterDTOImplCopyWith<$Res> {
  __$$RegisterDTOImplCopyWithImpl(
      _$RegisterDTOImpl _value, $Res Function(_$RegisterDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$RegisterDTOImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterDTOImpl implements _RegisterDTO {
  const _$RegisterDTOImpl({required this.phoneNumber});

  factory _$RegisterDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterDTOImplFromJson(json);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'RegisterDTO(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterDTOImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  /// Create a copy of RegisterDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterDTOImplCopyWith<_$RegisterDTOImpl> get copyWith =>
      __$$RegisterDTOImplCopyWithImpl<_$RegisterDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterDTOImplToJson(
      this,
    );
  }
}

abstract class _RegisterDTO implements RegisterDTO {
  const factory _RegisterDTO({required final String phoneNumber}) =
      _$RegisterDTOImpl;

  factory _RegisterDTO.fromJson(Map<String, dynamic> json) =
      _$RegisterDTOImpl.fromJson;

  @override
  String get phoneNumber;

  /// Create a copy of RegisterDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterDTOImplCopyWith<_$RegisterDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
