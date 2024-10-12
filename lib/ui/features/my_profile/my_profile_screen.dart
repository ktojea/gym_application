import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/my_profile/my_profile_wm.dart';

@RoutePage()
class MyProfileScreen extends ElementaryWidget<IMyProfileScreenWidgetModel> {
  const MyProfileScreen({super.key}) : super(defaultMyProfileScreenWidgetModelFactory);

  @override
  Widget build(IMyProfileScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Мой профиль'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ColoredBox(
        color: Colors.green.shade100,
        child: const Center(),
      ),
    );
  }
}
