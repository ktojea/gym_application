import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/navigation/app_router.dart';
import 'package:gym_application/ui/features/login/login_model.dart';
import 'package:gym_application/ui/features/login/login_screen.dart';

abstract interface class ILoginScreenWidgetModel implements IWidgetModel {
  void onRegistrationTap();
}

LoginScreenWidgetModel defaultLoginScreenWidgetModelFactory(BuildContext context) {
  return LoginScreenWidgetModel(
    LoginScreenModel(),
  );
}

class LoginScreenWidgetModel extends WidgetModel<LoginScreen, ILoginScreenModel> implements ILoginScreenWidgetModel {
  LoginScreenWidgetModel(super.model);

  @override
  void onRegistrationTap() => context.router.push(const RegistrationRoute());
}
