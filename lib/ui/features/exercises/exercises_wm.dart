import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/navigation/app_router.dart';
import 'package:gym_application/ui/features/exercises/exercises_model.dart';
import 'package:gym_application/ui/features/exercises/exercises_screen.dart';

abstract interface class IExercisesScreenWidgetModel implements IWidgetModel {
  MediaQueryData get mediaQuery;

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
  void onExerciseTap() => context.router.push(const EquipmentRoute());

  @override
  MediaQueryData get mediaQuery => MediaQuery.of(context);
}
