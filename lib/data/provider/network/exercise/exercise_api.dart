import 'package:dio/dio.dart';
import 'package:gym_application/data/models/local/exercise/exercise.dart';
import 'package:retrofit/retrofit.dart';

part 'exercise_api.g.dart';

@RestApi()
abstract class ExerciseApi {
  factory ExerciseApi(Dio dio, {String baseUrl}) = _ExerciseApi;

  @GET('/exercise/muscle_group/{id}')
  Future<List<Exercise>> getExercisesByMuscleGroupId(@Path() int muscleGroupId);

  @GET('/exercise/equipment/{id}')
  Future<List<Exercise>> getExercisesByEquipmentId(@Path() int equipmentId);
}
