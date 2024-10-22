// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseImpl _$$ExerciseImplFromJson(Map<String, dynamic> json) =>
    _$ExerciseImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      equipmentId: (json['equipment_id'] as num).toInt(),
      muscleGroupId: (json['muscle_group_id'] as num).toInt(),
      difficulty: (json['difficulty'] as num).toInt(),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$ExerciseImplToJson(_$ExerciseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'equipment_id': instance.equipmentId,
      'muscle_group_id': instance.muscleGroupId,
      'difficulty': instance.difficulty,
      'url': instance.url,
    };
