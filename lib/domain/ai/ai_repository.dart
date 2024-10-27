import 'package:gym_application/data/provider/network/ai_api/ai_api.dart';

class AiRepository {
  const AiRepository({required AiApi aiApi}) : _aiApi = aiApi;

  final AiApi _aiApi;

  Future<String> getAdviceForExercise(int exerciseId) async {
    try {
      final adviceForExercise = await _aiApi.getAdviceForExercise(exerciseId);

      return adviceForExercise;
    } on Exception {
      rethrow;
    }
  }

  Future<String> getTrainingPlan() async {
    try {
      final traningPlan = await _aiApi.getTrainingPlan();

      return traningPlan;
    } on Exception {
      rethrow;
    }
  }

  Future<String> getProgressAssessment() async {
    try {
      final progressAssessment = await _aiApi.getProgressAssessment();

      return progressAssessment;
    } on Exception {
      rethrow;
    }
  }
}
