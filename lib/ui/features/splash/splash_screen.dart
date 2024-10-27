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
      body: Image.asset('assets/images/splash.jpeg'),
    );
  }
}
