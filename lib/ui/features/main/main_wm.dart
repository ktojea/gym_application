import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/navigation/app_router.dart';
import 'package:gym_application/data/models/local/muscle_group/muscle_group.dart';
import 'package:gym_application/ui/features/main/main_screen.dart';
import 'package:gym_application/ui/features/main/main_model.dart';

abstract interface class IMainScreenWidgetModel implements IWidgetModel {
  ValueNotifier<EntityState<List<MuscleGroup>>> get muscleGroupListListenable;

  Future<void> onRefresh();

  void onExercisesTap();

  void onMyProfileTap();

  void onQRScanTap();
}

MainScreenWidgetModel defaultMainScreenWidgetModelFactory(
    BuildContext context) {
  return MainScreenWidgetModel(
    MainScreenModel(),
  );
}

class MainScreenWidgetModel extends WidgetModel<MainScreen, IMainScreenModel>
    implements IMainScreenWidgetModel {
  MainScreenWidgetModel(super.model);

  @override
  void onMyProfileTap() => context.router.push(const MyProfileRoute());

  @override
  void onExercisesTap() => context.router.push(const ExercisesRoute());

  @override
  void onQRScanTap() {
    // TODO: implement onQRScanTap
  }

  final _muscleGroupListEntity = EntityStateNotifier<List<MuscleGroup>>();

  @override
  ValueNotifier<EntityState<List<MuscleGroup>>> get muscleGroupListListenable =>
      _muscleGroupListEntity;

  @override
  Future<void> initWidgetModel() async {
    _initMain();

    super.initWidgetModel();
  }

  Future<void> _initMain() async {
    _initMuscleGroupList();
  }

  Future<void> _initMuscleGroupList() async {
    _muscleGroupListEntity.loading();

    try {
      await Future.delayed(const Duration(seconds: 2));

      final list = List.generate(
        12,
        (i) => MuscleGroup(
          id: i,
          name: "Задняя часть бедра",
          imageUrl: "",
        ),
      );

      _muscleGroupListEntity.content(list);
    } on Exception {
      _muscleGroupListEntity.error();
      print("Error");
    }
  }
  
  @override
  Future<void> onRefresh() async {await _initMuscleGroupList();
  }
}
