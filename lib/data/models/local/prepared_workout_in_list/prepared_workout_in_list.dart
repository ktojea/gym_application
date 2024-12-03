// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_application/data/models/local/muscle_group/muscle_group.dart';

part 'prepared_workout_in_list.freezed.dart';
part 'prepared_workout_in_list.g.dart';

@freezed
class PreparedWorkoutInList with _$PreparedWorkoutInList {
  const PreparedWorkoutInList._();
  const factory PreparedWorkoutInList({
    required int id,
    required String name,
    required String description,
    required String trainingLevel,
    required List<MuscleGroup> muscleGroups,
  }) = _PreparedWorkoutInList;

  factory PreparedWorkoutInList.fromJson(Map<String, dynamic> json) => _$PreparedWorkoutInListFromJson(json);
}
