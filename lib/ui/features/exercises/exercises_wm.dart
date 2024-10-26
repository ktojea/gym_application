import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/di/scopes/user/user_scope.dart';
import 'package:gym_application/common/utils/navigation/app_router.dart';
import 'package:gym_application/data/models/local/muscle_group_level_lists/muscle_group_level_lists.dart';
import 'package:gym_application/ui/features/exercises/exercises_model.dart';
import 'package:gym_application/ui/features/exercises/exercises_screen.dart';

abstract interface class IExercisesScreenWidgetModel implements IWidgetModel {
  MediaQueryData get mediaQuery;

  ValueNotifier<EntityState<MuscleGroupLevelLists>> get muscleGroupLevelListsListenable;

  void onExerciseTap(int exerciseId, int equipmentId);
}

ExercisesScreenWidgetModel defaultExercisesScreenWidgetModelFactory(BuildContext context) {
  return ExercisesScreenWidgetModel(
    ExercisesScreenModel(
      exerciseRepository: context.userInfo.exerciseRepository,
    ),
  );
}

class ExercisesScreenWidgetModel extends WidgetModel<ExercisesScreen, IExercisesScreenModel>
    implements IExercisesScreenWidgetModel {
  ExercisesScreenWidgetModel(super.model);

  @override
  void onExerciseTap(int exerciseId, int equipmentId) => context.router.push(
        EquipmentRoute(
          equipmentId: equipmentId,
          exerciseId: exerciseId,
        ),
      );

  @override
  MediaQueryData get mediaQuery => MediaQuery.of(context);

  @override
  Future<void> initWidgetModel() async {
    await _initMuscleGroupLevelLists();
    super.initWidgetModel();
  }

  Future<void> _initMuscleGroupLevelLists() async {
    _muscleGroupLevelListsEntity.loading();

    try {
      final muscleGroupLevelLists = await model.getExercisesByMuscleGroupId(widget.muscleGroup.id);

      _muscleGroupLevelListsEntity.content(muscleGroupLevelLists);
    } on Exception {
      _muscleGroupLevelListsEntity.error();
      print("Error");
    }
  }

  final _muscleGroupLevelListsEntity = EntityStateNotifier<MuscleGroupLevelLists>();

  @override
  ValueNotifier<EntityState<MuscleGroupLevelLists>> get muscleGroupLevelListsListenable => _muscleGroupLevelListsEntity;
}
