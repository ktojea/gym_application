import 'package:elementary/elementary.dart';
import 'package:gym_application/data/models/local/muscle_group/muscle_group.dart';
import 'package:gym_application/domain/ai/ai_repository.dart';
import 'package:gym_application/domain/muscle_group/muscle_group_repository.dart';

abstract interface class IMainScreenModel extends ElementaryModel {
  Future<List<MuscleGroup>> getMuscleGroups();

  Future<String> getTrainingPlan();
}

class MainScreenModel extends IMainScreenModel {
  MainScreenModel({
    required MuscleGroupRepository muscleGroupRepository,
    required AiRepository aiRepository,
  })  : _muscleGroupRepository = muscleGroupRepository,
        _aiRepository = aiRepository;

  final MuscleGroupRepository _muscleGroupRepository;

  final AiRepository _aiRepository;

  @override
  Future<List<MuscleGroup>> getMuscleGroups() async {
    try {
      final muscleGroups = await _muscleGroupRepository.getMuscleGroups();

      return muscleGroups;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<String> getTrainingPlan() async {
    try {
      final traningPlan = await _aiRepository.getTrainingPlan();

      return traningPlan;
    } on Exception {
      rethrow;
    }
  }
}
