// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseImpl _$$ExerciseImplFromJson(Map<String, dynamic> json) =>
    _$ExerciseImpl(
      name: json['name'] as String,
      imageUrl: json['image_url'] as String,
      description: json['description'] as String,
      difficulty: json['difficulty'] as String,
      muscleGroupId: (json['muscle_group_id'] as num).toInt(),
      exerciseMedia: (json['exercise_media'] as List<dynamic>)
          .map((e) => ExerciseMedia.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ExerciseImplToJson(_$ExerciseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image_url': instance.imageUrl,
      'description': instance.description,
      'difficulty': instance.difficulty,
      'muscle_group_id': instance.muscleGroupId,
      'exercise_media': instance.exerciseMedia.map((e) => e.toJson()).toList(),
    };
