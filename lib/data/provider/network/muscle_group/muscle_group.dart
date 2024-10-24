import 'package:dio/dio.dart';
import 'package:gym_application/data/models/local/muscle_group/muscle_group.dart';
import 'package:retrofit/retrofit.dart';

part 'muscle_group.g.dart';

@RestApi()
abstract class MuscleGroupApi {
  factory MuscleGroupApi(Dio dio, {String baseUrl}) = _MuscleGroupApi;

  @GET('/muscle_group/')
  Future<List<MuscleGroup>> getMuscleGroups();
}
