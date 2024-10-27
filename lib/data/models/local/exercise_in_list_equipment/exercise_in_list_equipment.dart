import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_in_list_equipment.freezed.dart';
part 'exercise_in_list_equipment.g.dart';

@freezed
class ExerciseInListEquipment with _$ExerciseInListEquipment {
  const ExerciseInListEquipment._();
  const factory ExerciseInListEquipment({
    required int id,
    required String name,
    required String description,
    required String? imageUrl,
    required int muscleGroupId,
  }) = _ExerciseInListEquipment;

  factory ExerciseInListEquipment.fromJson(Map<String, dynamic> json) => _$ExerciseInListEquipmentFromJson(json);
}
