import 'package:gym_application/data/models/local/exercise/exercise.dart';
import 'package:gym_application/data/provider/network/exercise/exercise_api.dart';

class ExerciseRepository {
  ExerciseRepository({required ExerciseApi exerciseApi}) : _exerciseApi = exerciseApi;

  final ExerciseApi _exerciseApi;

  Future<List<Exercise>> getExercisesByMuscleGroupId(int muscleGroupId) async {
    try {
      final exerciseList = await _exerciseApi.getExercisesByMuscleGroupId(muscleGroupId);

      return exerciseList;
    } on Exception {
      rethrow;
    }
  }

  Future<List<Exercise>> getExercisesByEquipmentId(int equipmentId) async {
    try {
      final exerciseList = await _exerciseApi.getExercisesByEquipmentId(equipmentId);

      return exerciseList;
    } on Exception {
      rethrow;
    }
  }
}
