import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/di/scopes/user/user_scope.dart';
import 'package:gym_application/common/utils/navigation/app_router.dart';
import 'package:gym_application/data/models/local/prepared_workout/prepared_workout.dart';
import 'package:gym_application/ui/features/workout/workout_model.dart';
import 'package:gym_application/ui/features/workout/workout_screen.dart';

abstract interface class IWorkoutScreenWidgetModel implements IWidgetModel {
  ValueNotifier<EntityState<PreparedWorkout>> get preparedWorkoutListenable;

  void onFavoriteTap();

  void onExerciseTap(int equipmentId, int exerciseId);

  void onStartTap();
}

WorkoutScreenWidgetModel defaultWorkoutScreenWidgetModelFactory(BuildContext context) {
  return WorkoutScreenWidgetModel(
    WorkoutScreenModel(workoutsRepository: context.userInfo.workoutsRepository),
  );
}

class WorkoutScreenWidgetModel extends WidgetModel<WorkoutScreen, IWorkoutScreenModel>
    implements IWorkoutScreenWidgetModel {
  WorkoutScreenWidgetModel(super.model);

  @override
  Future<void> initWidgetModel() async {
    await _initWorkout();
    super.initWidgetModel();
  }

  Future<void> _initWorkout() async {
    await _initPreparedWorkout();
  }

  final _preparedWorkoutEntity = EntityStateNotifier<PreparedWorkout>();

  @override
  ValueNotifier<EntityState<PreparedWorkout>> get preparedWorkoutListenable => _preparedWorkoutEntity;

  Future<void> _initPreparedWorkout() async {
    _preparedWorkoutEntity.loading();

    try {
      final preparedWorkout = await model.getPreparedWorkout(widget.preparedWorkoutId);

      _preparedWorkoutEntity.content(preparedWorkout);
    } on Exception {
      _preparedWorkoutEntity.error();
      debugPrint('Error');
    }
  }

  @override
  void onFavoriteTap() {
    // TODO: implement onFavoriteTap
  }

  @override
  void onExerciseTap(int equipmentId, int exerciseId) =>
      context.router.push(EquipmentRoute(equipmentId: equipmentId, exerciseId: exerciseId));

  @override
  void onStartTap() {
    // TODO: implement onStartTap
  }
}
