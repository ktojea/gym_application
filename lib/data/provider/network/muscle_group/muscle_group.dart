import 'package:gym_application/data/models/local/muscle_group/muscle_group.dart';
import 'package:retrofit/retrofit.dart';

@RestApi()
abstract class MuscleGroupApi {
  @GET('/muscle_group/')
  Future<List<MuscleGroup>> getMuscleGroups();
}
