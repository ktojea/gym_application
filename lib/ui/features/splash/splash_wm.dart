import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/navigation/app_router.dart';
import 'package:gym_application/ui/features/splash/splash_model.dart';
import 'package:gym_application/ui/features/splash/splash_screen.dart';

abstract interface class ISplashScreenWidgetModel implements IWidgetModel {
  void onMainTap();

  void onAuthTap();
}

SplashScreenWidgetModel defaultSplashScreenWidgetModelFactory(BuildContext context) {
  return SplashScreenWidgetModel(
    SplashScreenModel(),
  );
}

class SplashScreenWidgetModel extends WidgetModel<SplashScreen, ISplashScreenModel>
    implements ISplashScreenWidgetModel {
  SplashScreenWidgetModel(super.model);

  @override
  void onAuthTap() => context.router.push(const LoginRoute());

  @override
  void onMainTap() => context.router.push(const UserScopeWrapperRoute());
}
