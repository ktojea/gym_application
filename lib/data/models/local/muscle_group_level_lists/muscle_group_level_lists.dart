import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_application/data/models/local/exercise/exercise.dart';

part 'muscle_group_level_lists.freezed.dart';
part 'muscle_group_level_lists.g.dart';

@freezed
class MuscleGroupLevelLists with _$MuscleGroupLevelLists {
  const MuscleGroupLevelLists._();
  const factory MuscleGroupLevelLists({
    required List<Exercise> beginnerList,
    required List<Exercise> experiencedList,
    required List<Exercise> professional,
  }) = _MuscleGroupLevelLists;

  factory MuscleGroupLevelLists.fromJson(Map<String, dynamic> json) => _$MuscleGroupLevelListsFromJson(json);
}
