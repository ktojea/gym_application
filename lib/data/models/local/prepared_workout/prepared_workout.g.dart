// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prepared_workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PreparedWorkoutImpl _$$PreparedWorkoutImplFromJson(
        Map<String, dynamic> json) =>
    _$PreparedWorkoutImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      trainingLevel: json['training_level'] as String,
      exercises: (json['exercises'] as List<dynamic>)
          .map((e) => ExerciseInListWorkout.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFav: json['is_fav'] as bool?,
    );

Map<String, dynamic> _$$PreparedWorkoutImplToJson(
        _$PreparedWorkoutImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'training_level': instance.trainingLevel,
      'exercises': instance.exercises.map((e) => e.toJson()).toList(),
      'is_fav': instance.isFav,
    };
