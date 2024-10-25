import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/navigation/app_router.dart';
import 'package:gym_application/data/models/local/exercise/exercise.dart';
import 'package:gym_application/data/models/local/muscle_group_level_lists/muscle_group_level_lists.dart';
import 'package:gym_application/ui/features/exercises/exercises_model.dart';
import 'package:gym_application/ui/features/exercises/exercises_screen.dart';

abstract interface class IExercisesScreenWidgetModel implements IWidgetModel {
  MediaQueryData get mediaQuery;

  ValueNotifier<EntityState<MuscleGroupLevelLists>> get muscleGroupLevelListsListenable;

  void onExerciseTap();
}

ExercisesScreenWidgetModel defaultExercisesScreenWidgetModelFactory(BuildContext context) {
  return ExercisesScreenWidgetModel(
    ExercisesScreenModel(),
  );
}

class ExercisesScreenWidgetModel extends WidgetModel<ExercisesScreen, IExercisesScreenModel>
    implements IExercisesScreenWidgetModel {
  ExercisesScreenWidgetModel(super.model);

  @override
  void onExerciseTap() => context.router.push(EquipmentRoute(
        equipmentId: 123,
        exerciseId: 1,
      ));

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
      await Future.delayed(const Duration(seconds: 1));

      final list = List.generate(
        11,
        (i) => Exercise(
          id: i,
          name: "Упражнение ${i + 1}",
          description: "Делайте ${i % 3 + 1} раз в день и спина не будет болеть",
          equipmentId: 1,
          muscleGroupId: 1,
          difficulty: i % 3 + 1,
          imageUrl: "https://s00.yaplakal.com/pics/pics_original/5/1/3/3643315.jpg",
        ),
      );

      _muscleGroupLevelListsEntity.content(
        MuscleGroupLevelLists(
          beginnerList: list,
          experiencedList: list,
          professional: list,
        ),
      );
    } on Exception {
      _muscleGroupLevelListsEntity.error();
      print("Error");
    }
  }

  final _muscleGroupLevelListsEntity = EntityStateNotifier<MuscleGroupLevelLists>();

  @override
  ValueNotifier<EntityState<MuscleGroupLevelLists>> get muscleGroupLevelListsListenable => _muscleGroupLevelListsEntity;
}
