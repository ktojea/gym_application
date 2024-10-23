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
  List<Exercise> get beginnerList => throw _privateConstructorUsedError;
  List<Exercise> get experiencedList => throw _privateConstructorUsedError;
  List<Exercise> get professional => throw _privateConstructorUsedError;

  /// Serializes this MuscleGroupLevelLists to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MuscleGroupLevelLists
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {List<Exercise> beginnerList,
      List<Exercise> experiencedList,
      List<Exercise> professional});
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

  /// Create a copy of MuscleGroupLevelLists
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beginnerList = null,
    Object? experiencedList = null,
    Object? professional = null,
  }) {
    return _then(_value.copyWith(
      beginnerList: null == beginnerList
          ? _value.beginnerList
          : beginnerList // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
      experiencedList: null == experiencedList
          ? _value.experiencedList
          : experiencedList // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
      professional: null == professional
          ? _value.professional
          : professional // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
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
      {List<Exercise> beginnerList,
      List<Exercise> experiencedList,
      List<Exercise> professional});
}

/// @nodoc
class __$$MuscleGroupLevelListsImplCopyWithImpl<$Res>
    extends _$MuscleGroupLevelListsCopyWithImpl<$Res,
        _$MuscleGroupLevelListsImpl>
    implements _$$MuscleGroupLevelListsImplCopyWith<$Res> {
  __$$MuscleGroupLevelListsImplCopyWithImpl(_$MuscleGroupLevelListsImpl _value,
      $Res Function(_$MuscleGroupLevelListsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MuscleGroupLevelLists
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beginnerList = null,
    Object? experiencedList = null,
    Object? professional = null,
  }) {
    return _then(_$MuscleGroupLevelListsImpl(
      beginnerList: null == beginnerList
          ? _value._beginnerList
          : beginnerList // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
      experiencedList: null == experiencedList
          ? _value._experiencedList
          : experiencedList // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
      professional: null == professional
          ? _value._professional
          : professional // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MuscleGroupLevelListsImpl extends _MuscleGroupLevelLists {
  const _$MuscleGroupLevelListsImpl(
      {required final List<Exercise> beginnerList,
      required final List<Exercise> experiencedList,
      required final List<Exercise> professional})
      : _beginnerList = beginnerList,
        _experiencedList = experiencedList,
        _professional = professional,
        super._();

  factory _$MuscleGroupLevelListsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MuscleGroupLevelListsImplFromJson(json);

  final List<Exercise> _beginnerList;
  @override
  List<Exercise> get beginnerList {
    if (_beginnerList is EqualUnmodifiableListView) return _beginnerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_beginnerList);
  }

  final List<Exercise> _experiencedList;
  @override
  List<Exercise> get experiencedList {
    if (_experiencedList is EqualUnmodifiableListView) return _experiencedList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_experiencedList);
  }

  final List<Exercise> _professional;
  @override
  List<Exercise> get professional {
    if (_professional is EqualUnmodifiableListView) return _professional;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_professional);
  }

  @override
  String toString() {
    return 'MuscleGroupLevelLists(beginnerList: $beginnerList, experiencedList: $experiencedList, professional: $professional)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MuscleGroupLevelListsImpl &&
            const DeepCollectionEquality()
                .equals(other._beginnerList, _beginnerList) &&
            const DeepCollectionEquality()
                .equals(other._experiencedList, _experiencedList) &&
            const DeepCollectionEquality()
                .equals(other._professional, _professional));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_beginnerList),
      const DeepCollectionEquality().hash(_experiencedList),
      const DeepCollectionEquality().hash(_professional));

  /// Create a copy of MuscleGroupLevelLists
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
          {required final List<Exercise> beginnerList,
          required final List<Exercise> experiencedList,
          required final List<Exercise> professional}) =
      _$MuscleGroupLevelListsImpl;
  const _MuscleGroupLevelLists._() : super._();

  factory _MuscleGroupLevelLists.fromJson(Map<String, dynamic> json) =
      _$MuscleGroupLevelListsImpl.fromJson;

  @override
  List<Exercise> get beginnerList;
  @override
  List<Exercise> get experiencedList;
  @override
  List<Exercise> get professional;

  /// Create a copy of MuscleGroupLevelLists
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MuscleGroupLevelListsImplCopyWith<_$MuscleGroupLevelListsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
