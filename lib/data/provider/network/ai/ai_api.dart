import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'ai_api.g.dart';

@RestApi()
abstract class AiApi {
  factory AiApi(Dio dio, {String baseUrl}) = _AiApi;

  @GET('/ai/exercise/{id}')
  Future<String> getAdviceForExercise(@Path('id') int exerciseId);

  @GET('/ai/training_plan')
  Future<String> getTrainingPlan();

  @GET('/ai/progress_assessment')
  Future<String> getProgressAssessment();
}
