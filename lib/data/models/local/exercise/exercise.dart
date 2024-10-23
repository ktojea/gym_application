import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';
part 'exercise.g.dart';

@freezed
class Exercise with _$Exercise {
  const Exercise._();
  const factory Exercise({
    required int id,
    required String name,
    required String description,
    required int equipmentId,
    required int muscleGroupId,
    required int difficulty,
    required String imageUrl,
  }) = _Exercise;

  factory Exercise.fromJson(Map<String, dynamic> json) => _$ExerciseFromJson(json);
}
