import 'package:elementary/elementary.dart';
import 'package:gym_application/data/models/local/muscle_group_level_lists/muscle_group_level_lists.dart';
import 'package:gym_application/domain/exercise/exercise_repository.dart';

abstract interface class IExercisesScreenModel extends ElementaryModel {
  Future<MuscleGroupLevelLists> getExercisesByMuscleGroupId(int muscleGroupId);
}

class ExercisesScreenModel extends IExercisesScreenModel {
  ExercisesScreenModel({
    required ExerciseRepository exerciseRepository,
  }) : _exerciseRepository = exerciseRepository;

  final ExerciseRepository _exerciseRepository;

  @override
  Future<MuscleGroupLevelLists> getExercisesByMuscleGroupId(int muscleGroupId) async {
    try {
      final muscleGroupLevelLists = await _exerciseRepository.getExercisesByMuscleGroupId(muscleGroupId);

      return muscleGroupLevelLists;
    } on Exception {
      rethrow;
    }
  }
}
