import 'package:elementary/elementary.dart';
import 'package:gym_application/data/models/local/prepared_workout/prepared_workout.dart';
import 'package:gym_application/domain/prepared_workout/prepared_workout_repository.dart';

abstract interface class IWorkoutScreenModel extends ElementaryModel {
  Future<PreparedWorkout> getPreparedWorkout(int preparedWorkoutId);
}

class WorkoutScreenModel extends IWorkoutScreenModel {
  WorkoutScreenModel({
    required WorkoutsRepository workoutsRepository,
  }) : _workoutsRepository = workoutsRepository;

  final WorkoutsRepository _workoutsRepository;

  Future<PreparedWorkout> getPreparedWorkout(int preparedWorkoutId) async {
    try {
      final preparedWorkout = await _workoutsRepository.getPreparedWorkout(preparedWorkoutId);

      return preparedWorkout;
    } on Exception {
      rethrow;
    }
  }
}
