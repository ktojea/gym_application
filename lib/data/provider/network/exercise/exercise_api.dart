import 'package:gym_application/data/models/local/exercise/exercise.dart';
import 'package:retrofit/retrofit.dart';

@RestApi()
abstract class ExerciseApi {
  @GET('/exercise/muscle_group/{id}')
  Future<List<Exercise>> getExercisesByMuscleGroupId(@Path() int muscleGroupId);

  @GET('/exercise/equipment/{id}')
  Future<List<Exercise>> getExercisesByEquipmentId(@Path() int equipmentId);
}
