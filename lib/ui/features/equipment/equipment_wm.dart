import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/di/scopes/user/user_scope.dart';
import 'package:gym_application/common/utils/navigation/app_router.dart';
import 'package:gym_application/data/models/local/equipment/equipment.dart';
import 'package:gym_application/data/models/local/exercise/exercise.dart';
import 'package:gym_application/data/models/local/exercise_in_list/exercise_in_list.dart';
import 'package:gym_application/ui/features/equipment/equipment_model.dart';
import 'package:gym_application/ui/features/equipment/equipment_screen.dart';

abstract interface class IEquipmentScreenWidgetModel implements IWidgetModel {
  ValueNotifier<EntityState<Exercise>> get exerciseLisenable;

  ValueNotifier<EntityState<Equipment>> get equipmentListenable;

  ValueNotifier<EntityState<String>> get aiTextListenable;

  ValueNotifier<EntityState<List<ExerciseInList>>> get exercisesForEquipmentLisenable;

  ValueNotifier<int?> get muscleGroupIdListenable;

  void onExerciseTap(int exerciseId, int equipmentId);
}

EquipmentScreenWidgetModel defaultEquipmentScreenWidgetModelFactory(BuildContext context) {
  return EquipmentScreenWidgetModel(
    EquipmentScreenModel(
      exerciseRepository: context.userInfo.exerciseRepository,
      equipmentRepository: context.userInfo.equipmentRepository,
      aiRepository: context.userInfo.aiRepository,
    ),
  );
}

class EquipmentScreenWidgetModel extends WidgetModel<EquipmentScreen, IEquipmentScreenModel>
    implements IEquipmentScreenWidgetModel {
  EquipmentScreenWidgetModel(super.model);

  final _equipmentEntity = EntityStateNotifier<Equipment>();

  @override
  ValueNotifier<EntityState<Equipment>> get equipmentListenable => _equipmentEntity;

  final _exerciseEntity = EntityStateNotifier<Exercise>();

  @override
  ValueNotifier<EntityState<Exercise>> get exerciseLisenable => _exerciseEntity;

  final _exercisesForEquipmentEntity = EntityStateNotifier<List<ExerciseInList>>();

  @override
  ValueNotifier<EntityState<List<ExerciseInList>>> get exercisesForEquipmentLisenable => _exercisesForEquipmentEntity;

  @override
  Future<void> initWidgetModel() async {
    await Future.wait(
      [
        if (widget.exerciseId != null) _initExercise(),
        // if (widget.exerciseId != null) _initAiText(),
        _initEquipment(),
        _initExercisesForEquipment(),
      ],
    );

    super.initWidgetModel();
  }

  Future<void> _initExercise() async {
    if (widget.exerciseId == null) return;

    _exerciseEntity.loading();

    try {
      final exercise = await model.getExercise(widget.exerciseId!);

      _exerciseEntity.content(exercise);
      _muscleGroupIdNotifier.value = exercise.muscleGroupId;
    } on Exception {
      _exerciseEntity.error();
      print("Error");
    }
  }

  Future<void> _initExercisesForEquipment() async {
    _exercisesForEquipmentEntity.loading();

    try {
      final exercisesEquipment = await model.getExercisesForEquipment(widget.equipmentId);

      final exercises = exercisesEquipment
          .map(
            (e) => ExerciseInList(
              id: e.id,
              name: e.name,
              description: e.description,
              imageUrl: e.imageUrl,
              equipmentId: widget.equipmentId,
              muscleGroupId: e.muscleGroupId,
            ),
          )
          .toList();

      _exercisesForEquipmentEntity.content(exercises);
    } on Exception {
      _exercisesForEquipmentEntity.error();
      print("Error");
    }
  }

  @override
  void onExerciseTap(int exerciseId, int equipmentId) => context.router.push(
        EquipmentRoute(
          equipmentId: equipmentId,
          exerciseId: exerciseId,
        ),
      );

  Future<void> _initEquipment() async {
    _equipmentEntity.loading();

    try {
      final equipment = await model.getEquipment(widget.equipmentId);

      _equipmentEntity.content(equipment);
    } on Exception {
      _equipmentEntity.error();
      print("Error");
    }
  }

  final _muscleGroupIdNotifier = ValueNotifier<int?>(null);

  @override
  ValueNotifier<int?> get muscleGroupIdListenable => _muscleGroupIdNotifier;

  final _aiTextEntity = EntityStateNotifier<String>();

  @override
  ValueNotifier<EntityState<String>> get aiTextListenable => _aiTextEntity;

  Future<void> _initAiText() async {
    if (widget.exerciseId == null) return;

    _aiTextEntity.loading();

    try {
      final adviceForExercise = await model.getAdviceForExercise(widget.exerciseId!);

      _aiTextEntity.content(adviceForExercise);
    } on Exception {
      _aiTextEntity.error();
    }
  }
}
