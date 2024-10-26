import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/di/scopes/user/user_scope.dart';
import 'package:gym_application/data/models/local/equipment/equipment.dart';
import 'package:gym_application/data/models/local/exercise/exercise.dart';
import 'package:gym_application/ui/features/equipment/equipment_model.dart';
import 'package:gym_application/ui/features/equipment/equipment_screen.dart';

abstract interface class IEquipmentScreenWidgetModel implements IWidgetModel {
  ValueNotifier<EntityState<Exercise>> get exerciseLisenable;

  ValueNotifier<EntityState<Equipment>> get equipmentListenable;
}

EquipmentScreenWidgetModel defaultEquipmentScreenWidgetModelFactory(BuildContext context) {
  return EquipmentScreenWidgetModel(
    EquipmentScreenModel(
      exerciseRepository: context.userInfo.exerciseRepository,
      equipmentRepository: context.userInfo.equipmentRepository,
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

  @override
  Future<void> initWidgetModel() async {
    await Future.wait(
      [
        if (widget.exerciseId != null) _initExercise(),
        _initEquipment(),
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
    } on Exception {
      _exerciseEntity.error();
      print("Error");
    }
  }

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
}
