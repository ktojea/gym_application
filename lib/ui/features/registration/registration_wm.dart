import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/registration/registration_model.dart';
import 'package:gym_application/ui/features/registration/registration_screen.dart';

abstract interface class IRegistrationScreenWidgetModel implements IWidgetModel {}

RegistrationScreenWidgetModel defaultRegistrationScreenWidgetModelFactory(BuildContext context) {
  return RegistrationScreenWidgetModel(
    RegistrationScreenModel(),
  );
}

class RegistrationScreenWidgetModel extends WidgetModel<RegistrationScreen, IRegistrationScreenModel>
    implements IRegistrationScreenWidgetModel {
  RegistrationScreenWidgetModel(super.model);
}
