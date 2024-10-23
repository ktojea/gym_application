import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/navigation/app_router.dart';
import 'package:gym_application/data/models/local/exercise/exercise.dart';
import 'package:gym_application/ui/features/exercises/exercises_model.dart';
import 'package:gym_application/ui/features/exercises/exercises_screen.dart';

abstract interface class IExercisesScreenWidgetModel implements IWidgetModel {
  MediaQueryData get mediaQuery;

  ValueNotifier<EntityState<List<Exercise>>> get exerciseListListenable;

  void onExerciseTap();
}

ExercisesScreenWidgetModel defaultExercisesScreenWidgetModelFactory(
    BuildContext context) {
  return ExercisesScreenWidgetModel(
    ExercisesScreenModel(),
  );
}

class ExercisesScreenWidgetModel
    extends WidgetModel<ExercisesScreen, IExercisesScreenModel>
    implements IExercisesScreenWidgetModel {
  ExercisesScreenWidgetModel(super.model);

  @override
  void onExerciseTap() => context.router.push(const EquipmentRoute());

  @override
  MediaQueryData get mediaQuery => MediaQuery.of(context);

  final _exerciseListEntity = EntityStateNotifier<List<Exercise>>();

  @override
  ValueNotifier<EntityState<List<Exercise>>> get exerciseListListenable =>
      _exerciseListEntity;

  @override
  Future<void> initWidgetModel() async {
    await _initExerciseList();
    super.initWidgetModel();
  }

  Future<void> _initExerciseList() async {
    _exerciseListEntity.loading();

    try {
      await Future.delayed(const Duration(seconds: 1));

      final list = List.generate(
        9,
        (i) => Exercise(
          id: i,
          name: "Упражнение ${i + 1}",
          description:
              "Делайте ${i % 3 + 1} раз в день и спина не будет болеть",
          equipmentId: 1,
          muscleGroupId: 1,
          difficulty: i % 3 + 1,
          imageUrl: "https://s00.yaplakal.com/pics/pics_original/5/1/3/3643315.jpg",
        ),
      );

      _exerciseListEntity.content(list);
    } on Exception {
      _exerciseListEntity.error();
      print("Error");
    }
  }
}
