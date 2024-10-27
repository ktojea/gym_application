// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_in_list_equipment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseInListEquipmentImpl _$$ExerciseInListEquipmentImplFromJson(
        Map<String, dynamic> json) =>
    _$ExerciseInListEquipmentImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['image_url'] as String?,
      muscleGroupId: (json['muscle_group_id'] as num).toInt(),
    );

Map<String, dynamic> _$$ExerciseInListEquipmentImplToJson(
        _$ExerciseInListEquipmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'muscle_group_id': instance.muscleGroupId,
    };
