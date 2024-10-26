// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_application/data/models/local/exercise_media/exercise_media.dart';

part 'exercise.freezed.dart';
part 'exercise.g.dart';

@freezed
class Exercise with _$Exercise {
  const Exercise._();
  const factory Exercise({
    @JsonKey(includeFromJson: false, includeToJson: false) int? id,
    required String name,
    required String imageUrl,
    required String description,
    required String difficulty,
    required int muscleGroupId,
    required List<ExerciseMedia> exerciseMedia,
  }) = _Exercise;

  factory Exercise.fromJson(Map<String, dynamic> json) => _$ExerciseFromJson(json);
}
