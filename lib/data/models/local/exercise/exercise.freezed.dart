// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Exercise _$ExerciseFromJson(Map<String, dynamic> json) {
  return _Exercise.fromJson(json);
}

/// @nodoc
mixin _$Exercise {
  @JsonKey(includeFromJson: false, includeToJson: false)
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  int get muscleGroupId => throw _privateConstructorUsedError;
  List<ExerciseMedia> get exerciseMedia => throw _privateConstructorUsedError;

  /// Serializes this Exercise to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExerciseCopyWith<Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res, Exercise>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) int? id,
      String name,
      String imageUrl,
      String description,
      String difficulty,
      int muscleGroupId,
      List<ExerciseMedia> exerciseMedia});
}

/// @nodoc
class _$ExerciseCopyWithImpl<$Res, $Val extends Exercise>
    implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? imageUrl = null,
    Object? description = null,
    Object? difficulty = null,
    Object? muscleGroupId = null,
    Object? exerciseMedia = null,
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
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      muscleGroupId: null == muscleGroupId
          ? _value.muscleGroupId
          : muscleGroupId // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseMedia: null == exerciseMedia
          ? _value.exerciseMedia
          : exerciseMedia // ignore: cast_nullable_to_non_nullable
              as List<ExerciseMedia>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseImplCopyWith<$Res>
    implements $ExerciseCopyWith<$Res> {
  factory _$$ExerciseImplCopyWith(
          _$ExerciseImpl value, $Res Function(_$ExerciseImpl) then) =
      __$$ExerciseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) int? id,
      String name,
      String imageUrl,
      String description,
      String difficulty,
      int muscleGroupId,
      List<ExerciseMedia> exerciseMedia});
}

/// @nodoc
class __$$ExerciseImplCopyWithImpl<$Res>
    extends _$ExerciseCopyWithImpl<$Res, _$ExerciseImpl>
    implements _$$ExerciseImplCopyWith<$Res> {
  __$$ExerciseImplCopyWithImpl(
      _$ExerciseImpl _value, $Res Function(_$ExerciseImpl) _then)
      : super(_value, _then);

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? imageUrl = null,
    Object? description = null,
    Object? difficulty = null,
    Object? muscleGroupId = null,
    Object? exerciseMedia = null,
  }) {
    return _then(_$ExerciseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      muscleGroupId: null == muscleGroupId
          ? _value.muscleGroupId
          : muscleGroupId // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseMedia: null == exerciseMedia
          ? _value._exerciseMedia
          : exerciseMedia // ignore: cast_nullable_to_non_nullable
              as List<ExerciseMedia>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseImpl extends _Exercise {
  const _$ExerciseImpl(
      {@JsonKey(includeFromJson: false, includeToJson: false) this.id,
      required this.name,
      required this.imageUrl,
      required this.description,
      required this.difficulty,
      required this.muscleGroupId,
      required final List<ExerciseMedia> exerciseMedia})
      : _exerciseMedia = exerciseMedia,
        super._();

  factory _$ExerciseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseImplFromJson(json);

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final int? id;
  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final String description;
  @override
  final String difficulty;
  @override
  final int muscleGroupId;
  final List<ExerciseMedia> _exerciseMedia;
  @override
  List<ExerciseMedia> get exerciseMedia {
    if (_exerciseMedia is EqualUnmodifiableListView) return _exerciseMedia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exerciseMedia);
  }

  @override
  String toString() {
    return 'Exercise(id: $id, name: $name, imageUrl: $imageUrl, description: $description, difficulty: $difficulty, muscleGroupId: $muscleGroupId, exerciseMedia: $exerciseMedia)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.muscleGroupId, muscleGroupId) ||
                other.muscleGroupId == muscleGroupId) &&
            const DeepCollectionEquality()
                .equals(other._exerciseMedia, _exerciseMedia));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      imageUrl,
      description,
      difficulty,
      muscleGroupId,
      const DeepCollectionEquality().hash(_exerciseMedia));

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      __$$ExerciseImplCopyWithImpl<_$ExerciseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseImplToJson(
      this,
    );
  }
}

abstract class _Exercise extends Exercise {
  const factory _Exercise(
      {@JsonKey(includeFromJson: false, includeToJson: false) final int? id,
      required final String name,
      required final String imageUrl,
      required final String description,
      required final String difficulty,
      required final int muscleGroupId,
      required final List<ExerciseMedia> exerciseMedia}) = _$ExerciseImpl;
  const _Exercise._() : super._();

  factory _Exercise.fromJson(Map<String, dynamic> json) =
      _$ExerciseImpl.fromJson;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  int? get id;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  String get description;
  @override
  String get difficulty;
  @override
  int get muscleGroupId;
  @override
  List<ExerciseMedia> get exerciseMedia;

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
