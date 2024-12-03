import 'package:dio/dio.dart';
import 'package:gym_application/data/models/local/prepared_workout/prepared_workout.dart';
import 'package:gym_application/data/models/local/prepared_workout_in_list/prepared_workout_in_list.dart';
import 'package:gym_application/data/models/remote/workouts/dto/muscle_group_id_list_dto/muscle_group_id_list_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'workouts_api.g.dart';

@RestApi()
abstract class WorkoutsApi {
  factory WorkoutsApi(Dio dio, {String baseUrl}) = _WorkoutsApi;

  @GET('/prepared_workouts/muscle_groups')
  Future<List<PreparedWorkoutInList>> getPreparedWorkouts(@Body() MuscleGroupIdListDTO muscleGroupIdListDTO);

  @GET('/prepared_workouts/{id}')
  Future<PreparedWorkout> getPreparedWorkout(@Path('id') int preparedWorkoutId);
}
