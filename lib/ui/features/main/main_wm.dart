import 'dart:async';
import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/di/scopes/user/user_scope.dart';
import 'package:gym_application/common/utils/navigation/app_router.dart';
import 'package:gym_application/data/models/local/muscle_group/muscle_group.dart';
import 'package:gym_application/ui/features/main/main_screen.dart';
import 'package:gym_application/ui/features/main/main_model.dart';

abstract interface class IMainScreenWidgetModel implements IWidgetModel {
  ValueNotifier<EntityState<List<MuscleGroup>>> get muscleGroupListListenable;

  ValueNotifier<EntityState<String>> get aiTextListenable;

  ValueNotifier<int> get pulseListenable;

  Future<void> onRefresh();

  void onMuscleGroupTap(MuscleGroup muscleGroup);

  void onMyProfileTap();

  void onQRScanTap();
}

MainScreenWidgetModel defaultMainScreenWidgetModelFactory(BuildContext context) {
  return MainScreenWidgetModel(
    MainScreenModel(
      muscleGroupRepository: context.userInfo.muscleGroupRepository,
      aiRepository: context.userInfo.aiRepository,
    ),
  );
}

class MainScreenWidgetModel extends WidgetModel<MainScreen, IMainScreenModel> implements IMainScreenWidgetModel {
  MainScreenWidgetModel(super.model);

  @override
  void onMyProfileTap() => context.router.push(const MyProfileRoute());

  @override
  void onMuscleGroupTap(MuscleGroup muscleGroup) => context.router.push(ExercisesRoute(muscleGroup: muscleGroup));

  @override
  void onQRScanTap() => context.router.push(const ScannerRoute());

  final _muscleGroupListEntity = EntityStateNotifier<List<MuscleGroup>>();

  @override
  ValueNotifier<EntityState<List<MuscleGroup>>> get muscleGroupListListenable => _muscleGroupListEntity;

  @override
  Future<void> initWidgetModel() async {
    await _initMain();

    Timer.periodic(const Duration(seconds: 1), (_) {
      var random = Random();
      _pulseNotifier.value = 90 + random.nextInt(10);
    });

    super.initWidgetModel();
  }

  Future<void> _initMain() async {
    await Future.wait([
      _initMuscleGroupList(),
      _initAiText(),
    ]);
  }

  Future<void> _initMuscleGroupList() async {
    _muscleGroupListEntity.loading();

    try {
      final muscleGroups = await model.getMuscleGroups();

      _muscleGroupListEntity.content(muscleGroups);
    } on Exception {
      _muscleGroupListEntity.error();
      print("Error");
    }
  }

  @override
  Future<void> onRefresh() async => await _initMuscleGroupList();

  final _aiTextEntity = EntityStateNotifier<String>();

  @override
  ValueNotifier<EntityState<String>> get aiTextListenable => _aiTextEntity;

  Future<void> _initAiText() async {
    _aiTextEntity.loading();

    try {
      final traningPlan = await model.getTrainingPlan();

      _aiTextEntity.content(traningPlan);
    } on Exception {
      _aiTextEntity.error();
    }
  }

  final _pulseNotifier = ValueNotifier<int>(96);

  @override
  ValueNotifier<int> get pulseListenable => _pulseNotifier;
}
