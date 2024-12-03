// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prepared_workout_in_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PreparedWorkoutInListImpl _$$PreparedWorkoutInListImplFromJson(
        Map<String, dynamic> json) =>
    _$PreparedWorkoutInListImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      trainingLevel: json['training_level'] as String,
      muscleGroups: (json['muscle_groups'] as List<dynamic>)
          .map((e) => MuscleGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PreparedWorkoutInListImplToJson(
        _$PreparedWorkoutInListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'training_level': instance.trainingLevel,
      'muscle_groups': instance.muscleGroups.map((e) => e.toJson()).toList(),
    };
