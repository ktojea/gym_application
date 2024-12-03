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
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get trainingLevel => throw _privateConstructorUsedError;
  List<ExerciseInListWorkout> get exercises =>
      throw _privateConstructorUsedError;
  bool? get isFav => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreparedWorkoutCopyWith<PreparedWorkout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreparedWorkoutCopyWith<$Res> {
  factory $PreparedWorkoutCopyWith(
          PreparedWorkout value, $Res Function(PreparedWorkout) then) =
      _$PreparedWorkoutCopyWithImpl<$Res, PreparedWorkout>;
  @useResult
  $Res call(
      {int? id,
      String name,
      String description,
      String trainingLevel,
      List<ExerciseInListWorkout> exercises,
      bool? isFav});
}

/// @nodoc
class _$PreparedWorkoutCopyWithImpl<$Res, $Val extends PreparedWorkout>
    implements $PreparedWorkoutCopyWith<$Res> {
  _$PreparedWorkoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = null,
    Object? trainingLevel = null,
    Object? exercises = null,
    Object? isFav = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      trainingLevel: null == trainingLevel
          ? _value.trainingLevel
          : trainingLevel // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: null == exercises
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<ExerciseInListWorkout>,
      isFav: freezed == isFav
          ? _value.isFav
          : isFav // ignore: cast_nullable_to_non_nullable
              as bool?,
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
  $Res call(
      {int? id,
      String name,
      String description,
      String trainingLevel,
      List<ExerciseInListWorkout> exercises,
      bool? isFav});
}

/// @nodoc
class __$$PreparedWorkoutImplCopyWithImpl<$Res>
    extends _$PreparedWorkoutCopyWithImpl<$Res, _$PreparedWorkoutImpl>
    implements _$$PreparedWorkoutImplCopyWith<$Res> {
  __$$PreparedWorkoutImplCopyWithImpl(
      _$PreparedWorkoutImpl _value, $Res Function(_$PreparedWorkoutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = null,
    Object? trainingLevel = null,
    Object? exercises = null,
    Object? isFav = freezed,
  }) {
    return _then(_$PreparedWorkoutImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      trainingLevel: null == trainingLevel
          ? _value.trainingLevel
          : trainingLevel // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: null == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<ExerciseInListWorkout>,
      isFav: freezed == isFav
          ? _value.isFav
          : isFav // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      required this.trainingLevel,
      required final List<ExerciseInListWorkout> exercises,
      this.isFav})
      : _exercises = exercises,
        super._();

  factory _$PreparedWorkoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreparedWorkoutImplFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String trainingLevel;
  final List<ExerciseInListWorkout> _exercises;
  @override
  List<ExerciseInListWorkout> get exercises {
    if (_exercises is EqualUnmodifiableListView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercises);
  }

  @override
  final bool? isFav;

  @override
  String toString() {
    return 'PreparedWorkout(id: $id, name: $name, description: $description, trainingLevel: $trainingLevel, exercises: $exercises, isFav: $isFav)';
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
            (identical(other.trainingLevel, trainingLevel) ||
                other.trainingLevel == trainingLevel) &&
            const DeepCollectionEquality()
                .equals(other._exercises, _exercises) &&
            (identical(other.isFav, isFav) || other.isFav == isFav));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description,
      trainingLevel, const DeepCollectionEquality().hash(_exercises), isFav);

  @JsonKey(ignore: true)
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
      {required final int? id,
      required final String name,
      required final String description,
      required final String trainingLevel,
      required final List<ExerciseInListWorkout> exercises,
      final bool? isFav}) = _$PreparedWorkoutImpl;
  const _PreparedWorkout._() : super._();

  factory _PreparedWorkout.fromJson(Map<String, dynamic> json) =
      _$PreparedWorkoutImpl.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get trainingLevel;
  @override
  List<ExerciseInListWorkout> get exercises;
  @override
  bool? get isFav;
  @override
  @JsonKey(ignore: true)
  _$$PreparedWorkoutImplCopyWith<_$PreparedWorkoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
