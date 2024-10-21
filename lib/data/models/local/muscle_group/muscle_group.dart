import 'package:freezed_annotation/freezed_annotation.dart';

part 'muscle_group.freezed.dart';
part 'muscle_group.g.dart';

@freezed
class MuscleGroup with _$MuscleGroup {
  const MuscleGroup._();
  const factory MuscleGroup({
    required int id,
    required String name,
    required String imageUrl,
  }) = _MuscleGroup;

  factory MuscleGroup.fromJson(Map<String, dynamic> json) => _$MuscleGroupFromJson(json);
}
