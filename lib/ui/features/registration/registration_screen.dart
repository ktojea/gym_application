import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/Registration/Registration_wm.dart';

@RoutePage()
class RegistrationScreen extends ElementaryWidget<IRegistrationScreenWidgetModel> {
  const RegistrationScreen({super.key}) : super(defaultRegistrationScreenWidgetModelFactory);

  @override
  Widget build(IRegistrationScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ColoredBox(
        color: Colors.red.shade100,
        child: const Center(),
      ),
    );
  }
}
