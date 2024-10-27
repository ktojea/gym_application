import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/di/scopes/auth/auth_scope.dart';
import 'package:gym_application/common/utils/di/scopes/global/global_scope.dart';
import 'package:gym_application/common/utils/navigation/app_router.dart';
import 'package:gym_application/ui/features/splash/splash_model.dart';
import 'package:gym_application/ui/features/splash/splash_screen.dart';

abstract interface class ISplashScreenWidgetModel implements IWidgetModel {}

SplashScreenWidgetModel defaultSplashScreenWidgetModelFactory(BuildContext context) {
  return SplashScreenWidgetModel(
    SplashScreenModel(
      authRepository: context.auth.authRepository,
      localStorageRepository: context.global.localStorageRepository,
    ),
  );
}

class SplashScreenWidgetModel extends WidgetModel<SplashScreen, ISplashScreenModel>
    implements ISplashScreenWidgetModel {
  SplashScreenWidgetModel(super.model);

  @override
  Future<void> initWidgetModel() async {
    await Future.delayed(const Duration(seconds: 1));

    final token = await model.getToken();

    try {
      if (token != null) {
        await model.validateUser(token.replaceFirst('Bearer ', ''));

        _toMainScreen();
      } else {
        _toLoginScreen();
      }
    } on Exception {
      _toLoginScreen();
    }

    super.initWidgetModel();
  }

  void _toLoginScreen() => context.router.push(const LoginRoute());

  void _toMainScreen() => context.router.push(const UserScopeWrapperRoute());
}
