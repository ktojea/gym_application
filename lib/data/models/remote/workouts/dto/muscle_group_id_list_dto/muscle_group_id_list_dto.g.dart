// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muscle_group_id_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MuscleGroupIdListDTOImpl _$$MuscleGroupIdListDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$MuscleGroupIdListDTOImpl(
      ids: (json['ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$MuscleGroupIdListDTOImplToJson(
        _$MuscleGroupIdListDTOImpl instance) =>
    <String, dynamic>{
      'ids': instance.ids,
    };
