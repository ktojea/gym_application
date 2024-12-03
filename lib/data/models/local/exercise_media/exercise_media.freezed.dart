// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExerciseMedia _$ExerciseMediaFromJson(Map<String, dynamic> json) {
  return _ExerciseMedia.fromJson(json);
}

/// @nodoc
mixin _$ExerciseMedia {
  int get id => throw _privateConstructorUsedError;
  int get exerciseId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseMediaCopyWith<ExerciseMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseMediaCopyWith<$Res> {
  factory $ExerciseMediaCopyWith(
          ExerciseMedia value, $Res Function(ExerciseMedia) then) =
      _$ExerciseMediaCopyWithImpl<$Res, ExerciseMedia>;
  @useResult
  $Res call({int id, int exerciseId, String type, String url});
}

/// @nodoc
class _$ExerciseMediaCopyWithImpl<$Res, $Val extends ExerciseMedia>
    implements $ExerciseMediaCopyWith<$Res> {
  _$ExerciseMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? exerciseId = null,
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseMediaImplCopyWith<$Res>
    implements $ExerciseMediaCopyWith<$Res> {
  factory _$$ExerciseMediaImplCopyWith(
          _$ExerciseMediaImpl value, $Res Function(_$ExerciseMediaImpl) then) =
      __$$ExerciseMediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int exerciseId, String type, String url});
}

/// @nodoc
class __$$ExerciseMediaImplCopyWithImpl<$Res>
    extends _$ExerciseMediaCopyWithImpl<$Res, _$ExerciseMediaImpl>
    implements _$$ExerciseMediaImplCopyWith<$Res> {
  __$$ExerciseMediaImplCopyWithImpl(
      _$ExerciseMediaImpl _value, $Res Function(_$ExerciseMediaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? exerciseId = null,
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_$ExerciseMediaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseMediaImpl extends _ExerciseMedia {
  const _$ExerciseMediaImpl(
      {required this.id,
      required this.exerciseId,
      required this.type,
      required this.url})
      : super._();

  factory _$ExerciseMediaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseMediaImplFromJson(json);

  @override
  final int id;
  @override
  final int exerciseId;
  @override
  final String type;
  @override
  final String url;

  @override
  String toString() {
    return 'ExerciseMedia(id: $id, exerciseId: $exerciseId, type: $type, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseMediaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.exerciseId, exerciseId) ||
                other.exerciseId == exerciseId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, exerciseId, type, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseMediaImplCopyWith<_$ExerciseMediaImpl> get copyWith =>
      __$$ExerciseMediaImplCopyWithImpl<_$ExerciseMediaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseMediaImplToJson(
      this,
    );
  }
}

abstract class _ExerciseMedia extends ExerciseMedia {
  const factory _ExerciseMedia(
      {required final int id,
      required final int exerciseId,
      required final String type,
      required final String url}) = _$ExerciseMediaImpl;
  const _ExerciseMedia._() : super._();

  factory _ExerciseMedia.fromJson(Map<String, dynamic> json) =
      _$ExerciseMediaImpl.fromJson;

  @override
  int get id;
  @override
  int get exerciseId;
  @override
  String get type;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$ExerciseMediaImplCopyWith<_$ExerciseMediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
