import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/exercises/exercises_wm.dart';

@RoutePage()
class ExercisesScreen extends ElementaryWidget<IExercisesScreenWidgetModel> {
  const ExercisesScreen({super.key}) : super(defaultExercisesScreenWidgetModelFactory);

  @override
  Widget build(IExercisesScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Упражнения'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.pink.shade100,
      ),
      body: ColoredBox(
        color: Colors.blue.shade100,
        child: Center(
          child: TextButton(
            onPressed: () => wm.onExerciseTap(),
            child: const Text('Тренажер'),
          ),
        ),
      ),
    );
  }
}
