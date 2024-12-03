// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_in_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExerciseInList _$ExerciseInListFromJson(Map<String, dynamic> json) {
  return _ExerciseInList.fromJson(json);
}

/// @nodoc
mixin _$ExerciseInList {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  int get equipmentId => throw _privateConstructorUsedError;
  int get muscleGroupId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseInListCopyWith<ExerciseInList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseInListCopyWith<$Res> {
  factory $ExerciseInListCopyWith(
          ExerciseInList value, $Res Function(ExerciseInList) then) =
      _$ExerciseInListCopyWithImpl<$Res, ExerciseInList>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      String? imageUrl,
      int equipmentId,
      int muscleGroupId});
}

/// @nodoc
class _$ExerciseInListCopyWithImpl<$Res, $Val extends ExerciseInList>
    implements $ExerciseInListCopyWith<$Res> {
  _$ExerciseInListCopyWithImpl(this._value, this._then);

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
    Object? imageUrl = freezed,
    Object? equipmentId = null,
    Object? muscleGroupId = null,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      equipmentId: null == equipmentId
          ? _value.equipmentId
          : equipmentId // ignore: cast_nullable_to_non_nullable
              as int,
      muscleGroupId: null == muscleGroupId
          ? _value.muscleGroupId
          : muscleGroupId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseInListImplCopyWith<$Res>
    implements $ExerciseInListCopyWith<$Res> {
  factory _$$ExerciseInListImplCopyWith(_$ExerciseInListImpl value,
          $Res Function(_$ExerciseInListImpl) then) =
      __$$ExerciseInListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      String? imageUrl,
      int equipmentId,
      int muscleGroupId});
}

/// @nodoc
class __$$ExerciseInListImplCopyWithImpl<$Res>
    extends _$ExerciseInListCopyWithImpl<$Res, _$ExerciseInListImpl>
    implements _$$ExerciseInListImplCopyWith<$Res> {
  __$$ExerciseInListImplCopyWithImpl(
      _$ExerciseInListImpl _value, $Res Function(_$ExerciseInListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = freezed,
    Object? equipmentId = null,
    Object? muscleGroupId = null,
  }) {
    return _then(_$ExerciseInListImpl(
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      equipmentId: null == equipmentId
          ? _value.equipmentId
          : equipmentId // ignore: cast_nullable_to_non_nullable
              as int,
      muscleGroupId: null == muscleGroupId
          ? _value.muscleGroupId
          : muscleGroupId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseInListImpl extends _ExerciseInList {
  const _$ExerciseInListImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageUrl,
      required this.equipmentId,
      required this.muscleGroupId})
      : super._();

  factory _$ExerciseInListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseInListImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String? imageUrl;
  @override
  final int equipmentId;
  @override
  final int muscleGroupId;

  @override
  String toString() {
    return 'ExerciseInList(id: $id, name: $name, description: $description, imageUrl: $imageUrl, equipmentId: $equipmentId, muscleGroupId: $muscleGroupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseInListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.equipmentId, equipmentId) ||
                other.equipmentId == equipmentId) &&
            (identical(other.muscleGroupId, muscleGroupId) ||
                other.muscleGroupId == muscleGroupId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, imageUrl, equipmentId, muscleGroupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseInListImplCopyWith<_$ExerciseInListImpl> get copyWith =>
      __$$ExerciseInListImplCopyWithImpl<_$ExerciseInListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseInListImplToJson(
      this,
    );
  }
}

abstract class _ExerciseInList extends ExerciseInList {
  const factory _ExerciseInList(
      {required final int id,
      required final String name,
      required final String description,
      required final String? imageUrl,
      required final int equipmentId,
      required final int muscleGroupId}) = _$ExerciseInListImpl;
  const _ExerciseInList._() : super._();

  factory _ExerciseInList.fromJson(Map<String, dynamic> json) =
      _$ExerciseInListImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String? get imageUrl;
  @override
  int get equipmentId;
  @override
  int get muscleGroupId;
  @override
  @JsonKey(ignore: true)
  _$$ExerciseInListImplCopyWith<_$ExerciseInListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
