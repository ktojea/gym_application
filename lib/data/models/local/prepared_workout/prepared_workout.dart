// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'prepared_workout.freezed.dart';
part 'prepared_workout.g.dart';

@freezed
class PreparedWorkout with _$PreparedWorkout {
  const PreparedWorkout._();
  const factory PreparedWorkout({
    required int id,
    required String name,
    required String description,
    required bool isFav,
  }) = _PreparedWorkout;

  factory PreparedWorkout.fromJson(Map<String, dynamic> json) => _$PreparedWorkoutFromJson(json);
}
