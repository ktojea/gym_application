import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/my_profile/my_profile_model.dart';
import 'package:gym_application/ui/features/my_profile/my_profile_screen.dart';

abstract interface class IMyProfileScreenWidgetModel implements IWidgetModel {}

MyProfileScreenWidgetModel defaultMyProfileScreenWidgetModelFactory(BuildContext context) {
  return MyProfileScreenWidgetModel(
    MyProfileScreenModel(),
  );
}

class MyProfileScreenWidgetModel extends WidgetModel<MyProfileScreen, IMyProfileScreenModel>
    implements IMyProfileScreenWidgetModel {
  MyProfileScreenWidgetModel(super.model);
}
