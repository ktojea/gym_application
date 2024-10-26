import 'package:elementary/elementary.dart';
import 'package:gym_application/data/models/local/muscle_group/muscle_group.dart';
import 'package:gym_application/domain/muscle_group/muscle_group_repository.dart';

abstract interface class IMainScreenModel extends ElementaryModel {
  Future<List<MuscleGroup>> getMuscleGroups();
}

class MainScreenModel extends IMainScreenModel {
  MainScreenModel({
    required MuscleGroupRepository muscleGroupRepository,
  }) : _muscleGroupRepository = muscleGroupRepository;

  final MuscleGroupRepository _muscleGroupRepository;

  @override
  Future<List<MuscleGroup>> getMuscleGroups() async {
    try {
      final muscleGroups = await _muscleGroupRepository.getMuscleGroups();

      return muscleGroups;
    } on Exception {
      rethrow;
    }
  }
}
