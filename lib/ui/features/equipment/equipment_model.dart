import 'package:elementary/elementary.dart';
import 'package:gym_application/data/models/local/equipment/equipment.dart';
import 'package:gym_application/data/models/local/exercise/exercise.dart';
import 'package:gym_application/domain/equipment/equipment_repository.dart';
import 'package:gym_application/domain/exercise/exercise_repository.dart';

abstract interface class IEquipmentScreenModel extends ElementaryModel {
  Future<Exercise> getExercise(int exerciseId);

  Future<Equipment> getEquipment(int equipmentId);
}

class EquipmentScreenModel extends IEquipmentScreenModel {
  EquipmentScreenModel({
    required ExerciseRepository exerciseRepository,
    required EquipmentRepository equipmentRepository,
  })  : _exerciseRepository = exerciseRepository,
        _equipmentRepository = equipmentRepository;

  final ExerciseRepository _exerciseRepository;

  final EquipmentRepository _equipmentRepository;

  @override
  Future<Exercise> getExercise(int exerciseId) async {
    try {
      final exercise = await _exerciseRepository.getExercise(exerciseId);

      return exercise;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<Equipment> getEquipment(int equipmentId) async {
    try {
      final equipment = await _equipmentRepository.getEquipment(equipmentId);

      return equipment;
    } on Exception {
      rethrow;
    }
  }
}
