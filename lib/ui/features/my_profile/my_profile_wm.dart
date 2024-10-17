import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/my_profile/my_profile_model.dart';
import 'package:gym_application/ui/features/my_profile/my_profile_screen.dart';

abstract interface class IMyProfileScreenWidgetModel implements IWidgetModel {
  User get user;

  void navigateBack();

  void onEditTap();
}

MyProfileScreenWidgetModel defaultMyProfileScreenWidgetModelFactory(
    BuildContext context) {
  return MyProfileScreenWidgetModel(
    MyProfileScreenModel(),
  );
}

class MyProfileScreenWidgetModel
    extends WidgetModel<MyProfileScreen, IMyProfileScreenModel>
    implements IMyProfileScreenWidgetModel {
  MyProfileScreenWidgetModel(super.model);

  @override
  User get user => User(
        firstName: "Анатолий",
        lastName: "Васечкин",
        age: 16,
        height: 183,
        weight: 81.7,
      );

  @override
  void navigateBack() => context.router.maybePop();
  
  @override
  void onEditTap() {
    // TODO: implement onEditTap
  }
}
