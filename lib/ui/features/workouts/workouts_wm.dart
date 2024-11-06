import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/navigation/app_router.dart';
import 'package:gym_application/data/models/local/muscle_group/muscle_group.dart';
import 'package:gym_application/data/models/local/prepared_workout/prepared_workout.dart';
import 'package:gym_application/ui/features/workouts/workouts_model.dart';
import 'package:gym_application/ui/features/workouts/workouts_screen.dart';

abstract interface class IWorkoutsScreenWidgetModel implements IWidgetModel {
  ValueNotifier<EntityState<List<PreparedWorkout>>> get practiceListListenable;

  ValueNotifier<EntityState<List<MuscleGroup>>> get muscleGroupListListenable;

  void onWorkoutTap();

  void onAddWorkoutTap();

  void onFavoriteTap();
}

WorkoutsScreenWidgetModel defaultWorkoutsScreenWidgetModelFactory(
    BuildContext context) {
  return WorkoutsScreenWidgetModel(
    WorkoutsScreenModel(),
  );
}

class WorkoutsScreenWidgetModel
    extends WidgetModel<WorkoutsScreen, IWorkoutsScreenModel>
    implements IWorkoutsScreenWidgetModel {
  WorkoutsScreenWidgetModel(super.model);

  final _practiceListEntity = EntityStateNotifier<List<PreparedWorkout>>();

  @override
  ValueNotifier<EntityState<List<PreparedWorkout>>>
      get practiceListListenable => _practiceListEntity;

  @override
  Future<void> initWidgetModel() async {
    await _initWorkouts();

    super.initWidgetModel();
  }

  Future<void> _initWorkouts() async {
    await Future.wait([
      _initPracticeList(),
      _initMuscleGroupList(),
    ]);
  }

  Future<void> _initPracticeList() async {
    _practiceListEntity.loading();

    try {
      await Future.delayed(const Duration(seconds: 1));

      final list = List.generate(
        12,
        (id) => PreparedWorkout(
          id: id,
          name: "Утренняя тренировка",
          description:
              "Набор несложных, но полезных упражнений для утренней тренировки",
          isFav: id % 2 == 0,
        ),
      );
      _practiceListEntity.content(list);
    } on Exception {
      _practiceListEntity.error();
      debugPrint("Error");
    }
  }

  final _muscleGroupListEntity = EntityStateNotifier<List<MuscleGroup>>();

  @override
  ValueNotifier<EntityState<List<MuscleGroup>>> get muscleGroupListListenable =>
      _muscleGroupListEntity;

  Future<void> _initMuscleGroupList() async {
    _muscleGroupListEntity.loading();

    try {
      await Future.delayed(const Duration(seconds: 2));

      final list = List.generate(
        4,
        (id) => const MuscleGroup(
          id: 1,
          name: "Упражнение",
          imageUrl:
              "https://i.pinimg.com/736x/1f/35/33/1f3533de01539d54bfa720fd0a08d363.jpg",
        ),
      );
      _muscleGroupListEntity.content(list);
    } on Exception {
      _muscleGroupListEntity.error();
      debugPrint('Error');
    }
  }

  @override
  void onWorkoutTap() => context.router.push(const WorkoutRoute());
  
  @override
  void onAddWorkoutTap() {
    // TODO: implement onAddWorkoutTap
  }
  
  @override
  void onFavoriteTap() {
    // TODO: implement onFavoriteTap
  }
}
