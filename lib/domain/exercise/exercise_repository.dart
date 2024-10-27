import 'package:gym_application/data/models/local/exercise/exercise.dart';
import 'package:gym_application/data/models/local/exercise_in_list_equipment/exercise_in_list_equipment.dart';
import 'package:gym_application/data/models/local/muscle_group_level_lists/muscle_group_level_lists.dart';
import 'package:gym_application/data/provider/network/exercise/exercise_api.dart';

class ExerciseRepository {
  ExerciseRepository({required ExerciseApi exerciseApi}) : _exerciseApi = exerciseApi;

  final ExerciseApi _exerciseApi;

  Future<Exercise> getExercise(int exerciseId) async {
    try {
      final exercise = await _exerciseApi.getExercise(exerciseId);

      return exercise;
    } on Exception {
      rethrow;
    }
  }

  Future<MuscleGroupLevelLists> getExercisesByMuscleGroupId(int muscleGroupId) async {
    try {
      final exerciseList = await _exerciseApi.getExercisesByMuscleGroupId(muscleGroupId);

      return exerciseList;
    } on Exception {
      rethrow;
    }
  }

  Future<List<ExerciseInListEquipment>> getExercisesByEquipmentId(int equipmentId) async {
    try {
      final exerciseList = await _exerciseApi.getExercisesByEquipmentId(equipmentId);

      return exerciseList;
    } on Exception {
      rethrow;
    }
  }
}
