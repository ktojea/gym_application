// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'muscle_group_level_lists.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MuscleGroupLevelLists _$MuscleGroupLevelListsFromJson(
    Map<String, dynamic> json) {
  return _MuscleGroupLevelLists.fromJson(json);
}

/// @nodoc
mixin _$MuscleGroupLevelLists {
  List<ExerciseInList> get beginnerExercises =>
      throw _privateConstructorUsedError;
  List<ExerciseInList> get intermediateExercises =>
      throw _privateConstructorUsedError;
  List<ExerciseInList> get advancedExercises =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MuscleGroupLevelListsCopyWith<MuscleGroupLevelLists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MuscleGroupLevelListsCopyWith<$Res> {
  factory $MuscleGroupLevelListsCopyWith(MuscleGroupLevelLists value,
          $Res Function(MuscleGroupLevelLists) then) =
      _$MuscleGroupLevelListsCopyWithImpl<$Res, MuscleGroupLevelLists>;
  @useResult
  $Res call(
      {List<ExerciseInList> beginnerExercises,
      List<ExerciseInList> intermediateExercises,
      List<ExerciseInList> advancedExercises});
}

/// @nodoc
class _$MuscleGroupLevelListsCopyWithImpl<$Res,
        $Val extends MuscleGroupLevelLists>
    implements $MuscleGroupLevelListsCopyWith<$Res> {
  _$MuscleGroupLevelListsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beginnerExercises = null,
    Object? intermediateExercises = null,
    Object? advancedExercises = null,
  }) {
    return _then(_value.copyWith(
      beginnerExercises: null == beginnerExercises
          ? _value.beginnerExercises
          : beginnerExercises // ignore: cast_nullable_to_non_nullable
              as List<ExerciseInList>,
      intermediateExercises: null == intermediateExercises
          ? _value.intermediateExercises
          : intermediateExercises // ignore: cast_nullable_to_non_nullable
              as List<ExerciseInList>,
      advancedExercises: null == advancedExercises
          ? _value.advancedExercises
          : advancedExercises // ignore: cast_nullable_to_non_nullable
              as List<ExerciseInList>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MuscleGroupLevelListsImplCopyWith<$Res>
    implements $MuscleGroupLevelListsCopyWith<$Res> {
  factory _$$MuscleGroupLevelListsImplCopyWith(
          _$MuscleGroupLevelListsImpl value,
          $Res Function(_$MuscleGroupLevelListsImpl) then) =
      __$$MuscleGroupLevelListsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ExerciseInList> beginnerExercises,
      List<ExerciseInList> intermediateExercises,
      List<ExerciseInList> advancedExercises});
}

/// @nodoc
class __$$MuscleGroupLevelListsImplCopyWithImpl<$Res>
    extends _$MuscleGroupLevelListsCopyWithImpl<$Res,
        _$MuscleGroupLevelListsImpl>
    implements _$$MuscleGroupLevelListsImplCopyWith<$Res> {
  __$$MuscleGroupLevelListsImplCopyWithImpl(_$MuscleGroupLevelListsImpl _value,
      $Res Function(_$MuscleGroupLevelListsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beginnerExercises = null,
    Object? intermediateExercises = null,
    Object? advancedExercises = null,
  }) {
    return _then(_$MuscleGroupLevelListsImpl(
      beginnerExercises: null == beginnerExercises
          ? _value._beginnerExercises
          : beginnerExercises // ignore: cast_nullable_to_non_nullable
              as List<ExerciseInList>,
      intermediateExercises: null == intermediateExercises
          ? _value._intermediateExercises
          : intermediateExercises // ignore: cast_nullable_to_non_nullable
              as List<ExerciseInList>,
      advancedExercises: null == advancedExercises
          ? _value._advancedExercises
          : advancedExercises // ignore: cast_nullable_to_non_nullable
              as List<ExerciseInList>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MuscleGroupLevelListsImpl extends _MuscleGroupLevelLists {
  const _$MuscleGroupLevelListsImpl(
      {required final List<ExerciseInList> beginnerExercises,
      required final List<ExerciseInList> intermediateExercises,
      required final List<ExerciseInList> advancedExercises})
      : _beginnerExercises = beginnerExercises,
        _intermediateExercises = intermediateExercises,
        _advancedExercises = advancedExercises,
        super._();

  factory _$MuscleGroupLevelListsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MuscleGroupLevelListsImplFromJson(json);

  final List<ExerciseInList> _beginnerExercises;
  @override
  List<ExerciseInList> get beginnerExercises {
    if (_beginnerExercises is EqualUnmodifiableListView)
      return _beginnerExercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_beginnerExercises);
  }

  final List<ExerciseInList> _intermediateExercises;
  @override
  List<ExerciseInList> get intermediateExercises {
    if (_intermediateExercises is EqualUnmodifiableListView)
      return _intermediateExercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_intermediateExercises);
  }

  final List<ExerciseInList> _advancedExercises;
  @override
  List<ExerciseInList> get advancedExercises {
    if (_advancedExercises is EqualUnmodifiableListView)
      return _advancedExercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_advancedExercises);
  }

  @override
  String toString() {
    return 'MuscleGroupLevelLists(beginnerExercises: $beginnerExercises, intermediateExercises: $intermediateExercises, advancedExercises: $advancedExercises)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MuscleGroupLevelListsImpl &&
            const DeepCollectionEquality()
                .equals(other._beginnerExercises, _beginnerExercises) &&
            const DeepCollectionEquality()
                .equals(other._intermediateExercises, _intermediateExercises) &&
            const DeepCollectionEquality()
                .equals(other._advancedExercises, _advancedExercises));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_beginnerExercises),
      const DeepCollectionEquality().hash(_intermediateExercises),
      const DeepCollectionEquality().hash(_advancedExercises));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MuscleGroupLevelListsImplCopyWith<_$MuscleGroupLevelListsImpl>
      get copyWith => __$$MuscleGroupLevelListsImplCopyWithImpl<
          _$MuscleGroupLevelListsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MuscleGroupLevelListsImplToJson(
      this,
    );
  }
}

abstract class _MuscleGroupLevelLists extends MuscleGroupLevelLists {
  const factory _MuscleGroupLevelLists(
          {required final List<ExerciseInList> beginnerExercises,
          required final List<ExerciseInList> intermediateExercises,
          required final List<ExerciseInList> advancedExercises}) =
      _$MuscleGroupLevelListsImpl;
  const _MuscleGroupLevelLists._() : super._();

  factory _MuscleGroupLevelLists.fromJson(Map<String, dynamic> json) =
      _$MuscleGroupLevelListsImpl.fromJson;

  @override
  List<ExerciseInList> get beginnerExercises;
  @override
  List<ExerciseInList> get intermediateExercises;
  @override
  List<ExerciseInList> get advancedExercises;
  @override
  @JsonKey(ignore: true)
  _$$MuscleGroupLevelListsImplCopyWith<_$MuscleGroupLevelListsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
