import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/navigation/app_router.dart';
import 'package:gym_application/ui/features/main/main_screen.dart';
import 'package:gym_application/ui/features/main/main_model.dart';

abstract interface class IMainScreenWidgetModel implements IWidgetModel {
  void onExercisesTap();

  void onMyProfileTap();
}

MainScreenWidgetModel defaultMainScreenWidgetModelFactory(BuildContext context) {
  return MainScreenWidgetModel(
    MainScreenModel(),
  );
}

class MainScreenWidgetModel extends WidgetModel<MainScreen, IMainScreenModel> implements IMainScreenWidgetModel {
  MainScreenWidgetModel(super.model);

  @override
  void onMyProfileTap() => context.router.push(const MyProfileRoute());

  @override
  void onExercisesTap() => context.router.push(const ExercisesRoute());
}
