// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_application/data/models/local/exercise_in_list_workout/exercise_in_list_workout.dart';

part 'prepared_workout.freezed.dart';
part 'prepared_workout.g.dart';

@freezed
class PreparedWorkout with _$PreparedWorkout {
  const PreparedWorkout._();
  const factory PreparedWorkout({
    required int? id,
    required String name,
    required String description,
    required String trainingLevel,
    required List<ExerciseInListWorkout> exercises,
    bool? isFav,
  }) = _PreparedWorkout;

  factory PreparedWorkout.fromJson(Map<String, dynamic> json) => _$PreparedWorkoutFromJson(json);
}
