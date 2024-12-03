// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'muscle_group_id_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MuscleGroupIdListDTO _$MuscleGroupIdListDTOFromJson(Map<String, dynamic> json) {
  return _MuscleGroupIdListDTO.fromJson(json);
}

/// @nodoc
mixin _$MuscleGroupIdListDTO {
  List<int> get ids => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MuscleGroupIdListDTOCopyWith<MuscleGroupIdListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MuscleGroupIdListDTOCopyWith<$Res> {
  factory $MuscleGroupIdListDTOCopyWith(MuscleGroupIdListDTO value,
          $Res Function(MuscleGroupIdListDTO) then) =
      _$MuscleGroupIdListDTOCopyWithImpl<$Res, MuscleGroupIdListDTO>;
  @useResult
  $Res call({List<int> ids});
}

/// @nodoc
class _$MuscleGroupIdListDTOCopyWithImpl<$Res,
        $Val extends MuscleGroupIdListDTO>
    implements $MuscleGroupIdListDTOCopyWith<$Res> {
  _$MuscleGroupIdListDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_value.copyWith(
      ids: null == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MuscleGroupIdListDTOImplCopyWith<$Res>
    implements $MuscleGroupIdListDTOCopyWith<$Res> {
  factory _$$MuscleGroupIdListDTOImplCopyWith(_$MuscleGroupIdListDTOImpl value,
          $Res Function(_$MuscleGroupIdListDTOImpl) then) =
      __$$MuscleGroupIdListDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> ids});
}

/// @nodoc
class __$$MuscleGroupIdListDTOImplCopyWithImpl<$Res>
    extends _$MuscleGroupIdListDTOCopyWithImpl<$Res, _$MuscleGroupIdListDTOImpl>
    implements _$$MuscleGroupIdListDTOImplCopyWith<$Res> {
  __$$MuscleGroupIdListDTOImplCopyWithImpl(_$MuscleGroupIdListDTOImpl _value,
      $Res Function(_$MuscleGroupIdListDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$MuscleGroupIdListDTOImpl(
      ids: null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MuscleGroupIdListDTOImpl extends _MuscleGroupIdListDTO {
  const _$MuscleGroupIdListDTOImpl({required final List<int> ids})
      : _ids = ids,
        super._();

  factory _$MuscleGroupIdListDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MuscleGroupIdListDTOImplFromJson(json);

  final List<int> _ids;
  @override
  List<int> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString() {
    return 'MuscleGroupIdListDTO(ids: $ids)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MuscleGroupIdListDTOImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MuscleGroupIdListDTOImplCopyWith<_$MuscleGroupIdListDTOImpl>
      get copyWith =>
          __$$MuscleGroupIdListDTOImplCopyWithImpl<_$MuscleGroupIdListDTOImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MuscleGroupIdListDTOImplToJson(
      this,
    );
  }
}

abstract class _MuscleGroupIdListDTO extends MuscleGroupIdListDTO {
  const factory _MuscleGroupIdListDTO({required final List<int> ids}) =
      _$MuscleGroupIdListDTOImpl;
  const _MuscleGroupIdListDTO._() : super._();

  factory _MuscleGroupIdListDTO.fromJson(Map<String, dynamic> json) =
      _$MuscleGroupIdListDTOImpl.fromJson;

  @override
  List<int> get ids;
  @override
  @JsonKey(ignore: true)
  _$$MuscleGroupIdListDTOImplCopyWith<_$MuscleGroupIdListDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
