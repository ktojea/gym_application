import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_in_list.freezed.dart';
part 'exercise_in_list.g.dart';

@freezed
class ExerciseInList with _$ExerciseInList {
  const ExerciseInList._();
  const factory ExerciseInList({
    required int id,
    required String name,
    required String description,
    required String? imageUrl,
    required int equipmentId,
  }) = _ExerciseInList;

  factory ExerciseInList.fromJson(Map<String, dynamic> json) => _$ExerciseInListFromJson(json);
}
