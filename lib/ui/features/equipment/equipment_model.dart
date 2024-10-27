import 'package:elementary/elementary.dart';
import 'package:gym_application/data/models/local/equipment/equipment.dart';
import 'package:gym_application/data/models/local/exercise/exercise.dart';
import 'package:gym_application/data/models/local/exercise_in_list_equipment/exercise_in_list_equipment.dart';
import 'package:gym_application/domain/ai/ai_repository.dart';
import 'package:gym_application/domain/equipment/equipment_repository.dart';
import 'package:gym_application/domain/exercise/exercise_repository.dart';

abstract interface class IEquipmentScreenModel extends ElementaryModel {
  Future<Exercise> getExercise(int exerciseId);

  Future<Equipment> getEquipment(int equipmentId);

  Future<List<ExerciseInListEquipment>> getExercisesForEquipment(int equipmentId);

  Future<String> getAdviceForExercise(int execiseId);
}

class EquipmentScreenModel extends IEquipmentScreenModel {
  EquipmentScreenModel({
    required ExerciseRepository exerciseRepository,
    required EquipmentRepository equipmentRepository,
    required AiRepository aiRepository,
  })  : _exerciseRepository = exerciseRepository,
        _equipmentRepository = equipmentRepository,
        _aiRepository = aiRepository;

  final ExerciseRepository _exerciseRepository;

  final EquipmentRepository _equipmentRepository;

  final AiRepository _aiRepository;

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

  @override
  Future<List<ExerciseInListEquipment>> getExercisesForEquipment(int equipmentId) async {
    try {
      final exercises = await _exerciseRepository.getExercisesByEquipmentId(equipmentId);

      return exercises;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<String> getAdviceForExercise(int execiseId) async {
    try {
      final adviceForExercise = await _aiRepository.getAdviceForExercise(execiseId);

      return adviceForExercise;
    } on Exception {
      rethrow;
    }
  }
}
