import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/splash/splash_wm.dart';

@RoutePage()
class SplashScreen extends ElementaryWidget<ISplashScreenWidgetModel> {
  const SplashScreen({super.key}) : super(defaultSplashScreenWidgetModelFactory);

  @override
  Widget build(ISplashScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash экран'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ColoredBox(
        color: Colors.orange.shade100,
        child: Center(
          child: Column(
            children: [
              TextButton(
                onPressed: () => wm.onMainTap(),
                child: const Text('Главный экран'),
              ),
              TextButton(
                onPressed: () => wm.onAuthTap(),
                child: const Text('Авторизация'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
