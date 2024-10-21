import 'package:gym_application/data/models/local/muscle_group/muscle_group.dart';
import 'package:gym_application/data/provider/network/muscle_group/muscle_group.dart';

class MuscleGroupRepository {
  MuscleGroupRepository({required MuscleGroupApi muscleGroupApi}) : _muscleGroupApi = muscleGroupApi;

  final MuscleGroupApi _muscleGroupApi;

  Future<List<MuscleGroup>> getMuscleGroups() async {
    try {
      final muscleGroupList = await _muscleGroupApi.getMuscleGroups();

      return muscleGroupList;
    } on Exception {
      rethrow;
    }
  }
}
