import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/main/main_wm.dart';

@RoutePage()
class MainScreen extends ElementaryWidget<IMainScreenWidgetModel> {
  const MainScreen({super.key}) : super(defaultMainScreenWidgetModelFactory);

  @override
  Widget build(IMainScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Главный экран'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ColoredBox(
        color: Colors.blue.shade100,
        child: Center(
          child: Column(
            children: [
              TextButton(
                onPressed: () => wm.onMyProfileTap(),
                child: const Text('Мой профиль'),
              ),
              TextButton(
                onPressed: () => wm.onExercisesTap(),
                child: const Text('Упражнения'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
