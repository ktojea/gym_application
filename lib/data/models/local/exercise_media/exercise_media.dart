import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_media.freezed.dart';
part 'exercise_media.g.dart';

@freezed
class ExerciseMedia with _$ExerciseMedia {
  const ExerciseMedia._();
  const factory ExerciseMedia({
    required int id,
    required int exerciseId,
    required String type,
    required String url,
  }) = _ExerciseMedia;

  factory ExerciseMedia.fromJson(Map<String, dynamic> json) => _$ExerciseMediaFromJson(json);
}
