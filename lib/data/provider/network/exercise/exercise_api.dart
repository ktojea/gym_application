import 'package:dio/dio.dart';
import 'package:gym_application/data/models/local/exercise/exercise.dart';
import 'package:gym_application/data/models/local/exercise_in_list/exercise_in_list.dart';
import 'package:gym_application/data/models/local/muscle_group_level_lists/muscle_group_level_lists.dart';
import 'package:retrofit/retrofit.dart';

part 'exercise_api.g.dart';

@RestApi()
abstract class ExerciseApi {
  factory ExerciseApi(Dio dio, {String baseUrl}) = _ExerciseApi;

  @GET('/exercise/{id}')
  Future<Exercise> getExercise(@Path('id') int exerciseId);

  @GET('/exercise/muscle_group/{id}')
  Future<MuscleGroupLevelLists> getExercisesByMuscleGroupId(@Path('id') int muscleGroupId);

  @GET('/exercise/equipment/{id}')
  Future<List<ExerciseInList>> getExercisesByEquipmentId(@Path('id') int equipmentId);
}
