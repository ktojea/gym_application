import 'package:gym_application/data/models/local/prepared_workout/prepared_workout.dart';
import 'package:gym_application/data/models/local/prepared_workout_in_list/prepared_workout_in_list.dart';
import 'package:gym_application/data/models/remote/workouts/dto/muscle_group_id_list_dto/muscle_group_id_list_dto.dart';
import 'package:gym_application/data/provider/network/workouts/workouts_api.dart';

class WorkoutsRepository {
  WorkoutsRepository({required WorkoutsApi workoutsApi}) : _workoutsApi = workoutsApi;

  final WorkoutsApi _workoutsApi;

  Future<PreparedWorkout> getPreparedWorkout(int preparedWorkoutId) async {
    try {
      final preparedWorkout = await _workoutsApi.getPreparedWorkout(preparedWorkoutId);

      return preparedWorkout;
    } on Exception {
      rethrow;
    }
  }

  Future<List<PreparedWorkoutInList>> getPreparedWorkouts(MuscleGroupIdListDTO muscleGroupIdListDTO) async {
    try {
      final preparedWorkouts = await _workoutsApi.getPreparedWorkouts(muscleGroupIdListDTO);

      return preparedWorkouts;
    } on Exception {
      rethrow;
    }
  }
}
