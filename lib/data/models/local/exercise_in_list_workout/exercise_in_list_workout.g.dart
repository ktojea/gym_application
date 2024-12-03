// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_in_list_workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseInListWorkoutImpl _$$ExerciseInListWorkoutImplFromJson(
        Map<String, dynamic> json) =>
    _$ExerciseInListWorkoutImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      equipmentId: (json['equipment_id'] as num).toInt(),
      muscleGroupId: (json['muscle_group_id'] as num).toInt(),
      imageUrl: json['image_url'] as String?,
      difficulty: json['difficulty'] as String,
      sets: (json['sets'] as num).toInt(),
      repetitions: (json['repetitions'] as num).toInt(),
      weight: (json['weight'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ExerciseInListWorkoutImplToJson(
        _$ExerciseInListWorkoutImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'equipment_id': instance.equipmentId,
      'muscle_group_id': instance.muscleGroupId,
      'image_url': instance.imageUrl,
      'difficulty': instance.difficulty,
      'sets': instance.sets,
      'repetitions': instance.repetitions,
      'weight': instance.weight,
    };
