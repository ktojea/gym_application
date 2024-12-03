import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_in_list_workout.freezed.dart';
part 'exercise_in_list_workout.g.dart';

@freezed
class ExerciseInListWorkout with _$ExerciseInListWorkout {
  const ExerciseInListWorkout._();
  const factory ExerciseInListWorkout({
    required int id,
    required String name,
    required String description,
    required int equipmentId,
    required int muscleGroupId,
    required String? imageUrl,
    required String difficulty,
    required int sets,
    required int repetitions,
    required int? weight,
  }) = _ExerciseInListWorkout;

  factory ExerciseInListWorkout.fromJson(Map<String, dynamic> json) => _$ExerciseInListWorkoutFromJson(json);
}
