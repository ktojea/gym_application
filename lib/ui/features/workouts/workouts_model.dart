import 'package:elementary/elementary.dart';
import 'package:gym_application/data/models/local/prepared_workout_in_list/prepared_workout_in_list.dart';
import 'package:gym_application/data/models/remote/workouts/dto/muscle_group_id_list_dto/muscle_group_id_list_dto.dart';
import 'package:gym_application/domain/prepared_workout/prepared_workout_repository.dart';

abstract interface class IWorkoutsScreenModel extends ElementaryModel {
  Future<List<PreparedWorkoutInList>> getPreparedWorkouts(MuscleGroupIdListDTO muscleGroupIdListDTO);
}

class WorkoutsScreenModel extends IWorkoutsScreenModel {
  WorkoutsScreenModel({required WorkoutsRepository workoutsRepository}) : _workoutsRepository = workoutsRepository;

  final WorkoutsRepository _workoutsRepository;

  @override
  Future<List<PreparedWorkoutInList>> getPreparedWorkouts(MuscleGroupIdListDTO muscleGroupIdListDTO) async {
    try {
      final preparedWorkouts = await _workoutsRepository.getPreparedWorkouts(muscleGroupIdListDTO);

      return preparedWorkouts;
    } on Exception {
      rethrow;
    }
  }
}
