// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_in_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseInListImpl _$$ExerciseInListImplFromJson(Map<String, dynamic> json) =>
    _$ExerciseInListImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['image_url'] as String?,
      equipmentId: (json['equipment_id'] as num).toInt(),
    );

Map<String, dynamic> _$$ExerciseInListImplToJson(
        _$ExerciseInListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'equipment_id': instance.equipmentId,
    };
