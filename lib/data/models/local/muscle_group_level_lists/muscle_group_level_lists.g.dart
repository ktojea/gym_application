// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muscle_group_level_lists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MuscleGroupLevelListsImpl _$$MuscleGroupLevelListsImplFromJson(
        Map<String, dynamic> json) =>
    _$MuscleGroupLevelListsImpl(
      beginnerExercises: (json['beginner_exercises'] as List<dynamic>)
          .map((e) => ExerciseInList.fromJson(e as Map<String, dynamic>))
          .toList(),
      intermediateExercises: (json['intermediate_exercises'] as List<dynamic>)
          .map((e) => ExerciseInList.fromJson(e as Map<String, dynamic>))
          .toList(),
      advancedExercises: (json['advanced_exercises'] as List<dynamic>)
          .map((e) => ExerciseInList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MuscleGroupLevelListsImplToJson(
        _$MuscleGroupLevelListsImpl instance) =>
    <String, dynamic>{
      'beginner_exercises':
          instance.beginnerExercises.map((e) => e.toJson()).toList(),
      'intermediate_exercises':
          instance.intermediateExercises.map((e) => e.toJson()).toList(),
      'advanced_exercises':
          instance.advancedExercises.map((e) => e.toJson()).toList(),
    };
