// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_in_list_equipment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExerciseInListEquipment _$ExerciseInListEquipmentFromJson(
    Map<String, dynamic> json) {
  return _ExerciseInListEquipment.fromJson(json);
}

/// @nodoc
mixin _$ExerciseInListEquipment {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  int get muscleGroupId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseInListEquipmentCopyWith<ExerciseInListEquipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseInListEquipmentCopyWith<$Res> {
  factory $ExerciseInListEquipmentCopyWith(ExerciseInListEquipment value,
          $Res Function(ExerciseInListEquipment) then) =
      _$ExerciseInListEquipmentCopyWithImpl<$Res, ExerciseInListEquipment>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      String? imageUrl,
      int muscleGroupId});
}

/// @nodoc
class _$ExerciseInListEquipmentCopyWithImpl<$Res,
        $Val extends ExerciseInListEquipment>
    implements $ExerciseInListEquipmentCopyWith<$Res> {
  _$ExerciseInListEquipmentCopyWithImpl(this._value, this._then);

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
      muscleGroupId: null == muscleGroupId
          ? _value.muscleGroupId
          : muscleGroupId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseInListEquipmentImplCopyWith<$Res>
    implements $ExerciseInListEquipmentCopyWith<$Res> {
  factory _$$ExerciseInListEquipmentImplCopyWith(
          _$ExerciseInListEquipmentImpl value,
          $Res Function(_$ExerciseInListEquipmentImpl) then) =
      __$$ExerciseInListEquipmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      String? imageUrl,
      int muscleGroupId});
}

/// @nodoc
class __$$ExerciseInListEquipmentImplCopyWithImpl<$Res>
    extends _$ExerciseInListEquipmentCopyWithImpl<$Res,
        _$ExerciseInListEquipmentImpl>
    implements _$$ExerciseInListEquipmentImplCopyWith<$Res> {
  __$$ExerciseInListEquipmentImplCopyWithImpl(
      _$ExerciseInListEquipmentImpl _value,
      $Res Function(_$ExerciseInListEquipmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = freezed,
    Object? muscleGroupId = null,
  }) {
    return _then(_$ExerciseInListEquipmentImpl(
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
      muscleGroupId: null == muscleGroupId
          ? _value.muscleGroupId
          : muscleGroupId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseInListEquipmentImpl extends _ExerciseInListEquipment {
  const _$ExerciseInListEquipmentImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageUrl,
      required this.muscleGroupId})
      : super._();

  factory _$ExerciseInListEquipmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseInListEquipmentImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String? imageUrl;
  @override
  final int muscleGroupId;

  @override
  String toString() {
    return 'ExerciseInListEquipment(id: $id, name: $name, description: $description, imageUrl: $imageUrl, muscleGroupId: $muscleGroupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseInListEquipmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.muscleGroupId, muscleGroupId) ||
                other.muscleGroupId == muscleGroupId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, imageUrl, muscleGroupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseInListEquipmentImplCopyWith<_$ExerciseInListEquipmentImpl>
      get copyWith => __$$ExerciseInListEquipmentImplCopyWithImpl<
          _$ExerciseInListEquipmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseInListEquipmentImplToJson(
      this,
    );
  }
}

abstract class _ExerciseInListEquipment extends ExerciseInListEquipment {
  const factory _ExerciseInListEquipment(
      {required final int id,
      required final String name,
      required final String description,
      required final String? imageUrl,
      required final int muscleGroupId}) = _$ExerciseInListEquipmentImpl;
  const _ExerciseInListEquipment._() : super._();

  factory _ExerciseInListEquipment.fromJson(Map<String, dynamic> json) =
      _$ExerciseInListEquipmentImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String? get imageUrl;
  @override
  int get muscleGroupId;
  @override
  @JsonKey(ignore: true)
  _$$ExerciseInListEquipmentImplCopyWith<_$ExerciseInListEquipmentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
