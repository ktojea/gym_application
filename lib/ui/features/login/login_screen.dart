import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/login/login_wm.dart';

@RoutePage()
class LoginScreen extends ElementaryWidget<ILoginScreenWidgetModel> {
  const LoginScreen({super.key}) : super(defaultLoginScreenWidgetModelFactory);

  @override
  Widget build(ILoginScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Вход'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ColoredBox(
        color: Colors.blue.shade100,
        child: Center(
          child: Column(
            children: [
              TextButton(
                onPressed: () => wm.onRegistrationTap(),
                child: const Text('Регистрация'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
