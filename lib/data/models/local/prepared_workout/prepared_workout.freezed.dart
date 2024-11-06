// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prepared_workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PreparedWorkout _$PreparedWorkoutFromJson(Map<String, dynamic> json) {
  return _PreparedWorkout.fromJson(json);
}

/// @nodoc
mixin _$PreparedWorkout {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isFav => throw _privateConstructorUsedError;

  /// Serializes this PreparedWorkout to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PreparedWorkout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreparedWorkoutCopyWith<PreparedWorkout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreparedWorkoutCopyWith<$Res> {
  factory $PreparedWorkoutCopyWith(
          PreparedWorkout value, $Res Function(PreparedWorkout) then) =
      _$PreparedWorkoutCopyWithImpl<$Res, PreparedWorkout>;
  @useResult
  $Res call({int id, String name, String description, bool isFav});
}

/// @nodoc
class _$PreparedWorkoutCopyWithImpl<$Res, $Val extends PreparedWorkout>
    implements $PreparedWorkoutCopyWith<$Res> {
  _$PreparedWorkoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreparedWorkout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? isFav = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isFav: null == isFav
          ? _value.isFav
          : isFav // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreparedWorkoutImplCopyWith<$Res>
    implements $PreparedWorkoutCopyWith<$Res> {
  factory _$$PreparedWorkoutImplCopyWith(_$PreparedWorkoutImpl value,
          $Res Function(_$PreparedWorkoutImpl) then) =
      __$$PreparedWorkoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String description, bool isFav});
}

/// @nodoc
class __$$PreparedWorkoutImplCopyWithImpl<$Res>
    extends _$PreparedWorkoutCopyWithImpl<$Res, _$PreparedWorkoutImpl>
    implements _$$PreparedWorkoutImplCopyWith<$Res> {
  __$$PreparedWorkoutImplCopyWithImpl(
      _$PreparedWorkoutImpl _value, $Res Function(_$PreparedWorkoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreparedWorkout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? isFav = null,
  }) {
    return _then(_$PreparedWorkoutImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isFav: null == isFav
          ? _value.isFav
          : isFav // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreparedWorkoutImpl extends _PreparedWorkout {
  const _$PreparedWorkoutImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.isFav})
      : super._();

  factory _$PreparedWorkoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreparedWorkoutImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final bool isFav;

  @override
  String toString() {
    return 'PreparedWorkout(id: $id, name: $name, description: $description, isFav: $isFav)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreparedWorkoutImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isFav, isFav) || other.isFav == isFav));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, isFav);

  /// Create a copy of PreparedWorkout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreparedWorkoutImplCopyWith<_$PreparedWorkoutImpl> get copyWith =>
      __$$PreparedWorkoutImplCopyWithImpl<_$PreparedWorkoutImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreparedWorkoutImplToJson(
      this,
    );
  }
}

abstract class _PreparedWorkout extends PreparedWorkout {
  const factory _PreparedWorkout(
      {required final int id,
      required final String name,
      required final String description,
      required final bool isFav}) = _$PreparedWorkoutImpl;
  const _PreparedWorkout._() : super._();

  factory _PreparedWorkout.fromJson(Map<String, dynamic> json) =
      _$PreparedWorkoutImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  bool get isFav;

  /// Create a copy of PreparedWorkout
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreparedWorkoutImplCopyWith<_$PreparedWorkoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
