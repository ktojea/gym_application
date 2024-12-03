// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prepared_workout_in_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PreparedWorkoutInList _$PreparedWorkoutInListFromJson(
    Map<String, dynamic> json) {
  return _PreparedWorkoutInList.fromJson(json);
}

/// @nodoc
mixin _$PreparedWorkoutInList {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get trainingLevel => throw _privateConstructorUsedError;
  List<MuscleGroup> get muscleGroups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreparedWorkoutInListCopyWith<PreparedWorkoutInList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreparedWorkoutInListCopyWith<$Res> {
  factory $PreparedWorkoutInListCopyWith(PreparedWorkoutInList value,
          $Res Function(PreparedWorkoutInList) then) =
      _$PreparedWorkoutInListCopyWithImpl<$Res, PreparedWorkoutInList>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      String trainingLevel,
      List<MuscleGroup> muscleGroups});
}

/// @nodoc
class _$PreparedWorkoutInListCopyWithImpl<$Res,
        $Val extends PreparedWorkoutInList>
    implements $PreparedWorkoutInListCopyWith<$Res> {
  _$PreparedWorkoutInListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? trainingLevel = null,
    Object? muscleGroups = null,
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
      trainingLevel: null == trainingLevel
          ? _value.trainingLevel
          : trainingLevel // ignore: cast_nullable_to_non_nullable
              as String,
      muscleGroups: null == muscleGroups
          ? _value.muscleGroups
          : muscleGroups // ignore: cast_nullable_to_non_nullable
              as List<MuscleGroup>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreparedWorkoutInListImplCopyWith<$Res>
    implements $PreparedWorkoutInListCopyWith<$Res> {
  factory _$$PreparedWorkoutInListImplCopyWith(
          _$PreparedWorkoutInListImpl value,
          $Res Function(_$PreparedWorkoutInListImpl) then) =
      __$$PreparedWorkoutInListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      String trainingLevel,
      List<MuscleGroup> muscleGroups});
}

/// @nodoc
class __$$PreparedWorkoutInListImplCopyWithImpl<$Res>
    extends _$PreparedWorkoutInListCopyWithImpl<$Res,
        _$PreparedWorkoutInListImpl>
    implements _$$PreparedWorkoutInListImplCopyWith<$Res> {
  __$$PreparedWorkoutInListImplCopyWithImpl(_$PreparedWorkoutInListImpl _value,
      $Res Function(_$PreparedWorkoutInListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? trainingLevel = null,
    Object? muscleGroups = null,
  }) {
    return _then(_$PreparedWorkoutInListImpl(
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
      trainingLevel: null == trainingLevel
          ? _value.trainingLevel
          : trainingLevel // ignore: cast_nullable_to_non_nullable
              as String,
      muscleGroups: null == muscleGroups
          ? _value._muscleGroups
          : muscleGroups // ignore: cast_nullable_to_non_nullable
              as List<MuscleGroup>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreparedWorkoutInListImpl extends _PreparedWorkoutInList {
  const _$PreparedWorkoutInListImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.trainingLevel,
      required final List<MuscleGroup> muscleGroups})
      : _muscleGroups = muscleGroups,
        super._();

  factory _$PreparedWorkoutInListImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreparedWorkoutInListImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String trainingLevel;
  final List<MuscleGroup> _muscleGroups;
  @override
  List<MuscleGroup> get muscleGroups {
    if (_muscleGroups is EqualUnmodifiableListView) return _muscleGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_muscleGroups);
  }

  @override
  String toString() {
    return 'PreparedWorkoutInList(id: $id, name: $name, description: $description, trainingLevel: $trainingLevel, muscleGroups: $muscleGroups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreparedWorkoutInListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.trainingLevel, trainingLevel) ||
                other.trainingLevel == trainingLevel) &&
            const DeepCollectionEquality()
                .equals(other._muscleGroups, _muscleGroups));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description,
      trainingLevel, const DeepCollectionEquality().hash(_muscleGroups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreparedWorkoutInListImplCopyWith<_$PreparedWorkoutInListImpl>
      get copyWith => __$$PreparedWorkoutInListImplCopyWithImpl<
          _$PreparedWorkoutInListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreparedWorkoutInListImplToJson(
      this,
    );
  }
}

abstract class _PreparedWorkoutInList extends PreparedWorkoutInList {
  const factory _PreparedWorkoutInList(
          {required final int id,
          required final String name,
          required final String description,
          required final String trainingLevel,
          required final List<MuscleGroup> muscleGroups}) =
      _$PreparedWorkoutInListImpl;
  const _PreparedWorkoutInList._() : super._();

  factory _PreparedWorkoutInList.fromJson(Map<String, dynamic> json) =
      _$PreparedWorkoutInListImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get trainingLevel;
  @override
  List<MuscleGroup> get muscleGroups;
  @override
  @JsonKey(ignore: true)
  _$$PreparedWorkoutInListImplCopyWith<_$PreparedWorkoutInListImpl>
      get copyWith => throw _privateConstructorUsedError;
}
