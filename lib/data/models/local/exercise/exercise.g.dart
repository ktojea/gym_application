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
      equipmentId: (json['equipmentId'] as num).toInt(),
      muscleGroupId: (json['muscleGroupId'] as num).toInt(),
      difficulty: (json['difficulty'] as num).toInt(),
    );

Map<String, dynamic> _$$ExerciseImplToJson(_$ExerciseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'equipmentId': instance.equipmentId,
      'muscleGroupId': instance.muscleGroupId,
      'difficulty': instance.difficulty,
    };
