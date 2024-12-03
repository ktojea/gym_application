import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/di/scopes/user/user_scope.dart';
import 'package:gym_application/common/utils/navigation/app_router.dart';
import 'package:gym_application/data/models/local/muscle_group/muscle_group.dart';
import 'package:gym_application/data/models/local/prepared_workout_in_list/prepared_workout_in_list.dart';
import 'package:gym_application/data/models/remote/workouts/dto/muscle_group_id_list_dto/muscle_group_id_list_dto.dart';
import 'package:gym_application/ui/features/workouts/workouts_model.dart';
import 'package:gym_application/ui/features/workouts/workouts_screen.dart';

abstract interface class IWorkoutsScreenWidgetModel implements IWidgetModel {
  ValueNotifier<EntityState<List<PreparedWorkoutInList>>> get preparedWorkoutListListenable;

  ValueNotifier<EntityState<List<MuscleGroup>>> get muscleGroupListListenable;

  void onWorkoutTap(int preparedWorkoutId, List<MuscleGroup> muscleGroups);

  void onAddWorkoutTap();

  void onFavoriteTap();
}

WorkoutsScreenWidgetModel defaultWorkoutsScreenWidgetModelFactory(BuildContext context) {
  return WorkoutsScreenWidgetModel(
    WorkoutsScreenModel(
      workoutsRepository: context.userInfo.workoutsRepository,
    ),
  );
}

class WorkoutsScreenWidgetModel extends WidgetModel<WorkoutsScreen, IWorkoutsScreenModel>
    implements IWorkoutsScreenWidgetModel {
  WorkoutsScreenWidgetModel(super.model);

  final _preparedWorkoutListEntity = EntityStateNotifier<List<PreparedWorkoutInList>>();

  @override
  ValueNotifier<EntityState<List<PreparedWorkoutInList>>> get preparedWorkoutListListenable =>
      _preparedWorkoutListEntity;

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
    _preparedWorkoutListEntity.loading();

    try {
      final preparedWorkoutList = await model.getPreparedWorkouts(const MuscleGroupIdListDTO(ids: []));

      _preparedWorkoutListEntity.content(preparedWorkoutList);
    } on Exception {
      _preparedWorkoutListEntity.error();
      debugPrint("Error");
    }
  }

  final _muscleGroupListEntity = EntityStateNotifier<List<MuscleGroup>>();

  @override
  ValueNotifier<EntityState<List<MuscleGroup>>> get muscleGroupListListenable => _muscleGroupListEntity;

  Future<void> _initMuscleGroupList() async {
    _muscleGroupListEntity.loading();

    try {
      await Future.delayed(const Duration(seconds: 2));

      final list = List.generate(
        4,
        (id) => const MuscleGroup(
          id: 1,
          name: "Упражнение",
          imageUrl: "https://i.pinimg.com/736x/1f/35/33/1f3533de01539d54bfa720fd0a08d363.jpg",
        ),
      );
      _muscleGroupListEntity.content(list);
    } on Exception {
      _muscleGroupListEntity.error();
      debugPrint('Error');
    }
  }

  @override
  void onWorkoutTap(int preparedWorkoutId, List<MuscleGroup> muscleGroups) =>
      context.router.push(WorkoutRoute(preparedWorkoutId: preparedWorkoutId, muscleGroups: muscleGroups));

  @override
  void onAddWorkoutTap() {
    // TODO: implement onAddWorkoutTap
  }

  @override
  void onFavoriteTap() {
    // TODO: implement onFavoriteTap
  }
}
