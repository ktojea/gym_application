import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/workout/widgets/start_button.dart';
import 'package:gym_application/ui/features/workout/widgets/workout_exercise_widget.dart';
import 'package:gym_application/ui/features/workout/widgets/workout_extended_widget.dart';
import 'package:gym_application/ui/features/workout/workout_wm.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/main_app_bar_widget.dart';
import 'package:gym_application/ui/widgets/decoration/text_with_filter_widget.dart';

@RoutePage()
class WorkoutScreen extends ElementaryWidget<IWorkoutScreenWidgetModel> {
  const WorkoutScreen({super.key})
      : super(defaultWorkoutScreenWidgetModelFactory);

  @override
  Widget build(IWorkoutScreenWidgetModel wm) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: MainAppBarWidget(),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                EntityStateNotifierBuilder(
                  listenableEntityState: wm.workoutListenable,
                  loadingBuilder: (_, __) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  builder: (_, workout) => workout == null
                      ? const SizedBox.shrink()
                      : WorkoutExtendedWidget(
                          workout: workout,
                          onFavoriteTap: () => wm.onFavoriteTap(),
                          muscleGroupListListenable:
                              wm.muscleGroupListListenable,
                        ),
                ),
                const SizedBox(height: 20),
                const TextWithFilterWidget(
                  mainText: 'Упражнения',
                  secondText: 'Все упражнения',
                ),
                const SizedBox(height: 20),
                EntityStateNotifierBuilder(
                  listenableEntityState: wm.exerciseListListenable,
                  loadingBuilder: (_, __) =>
                      const Center(child: CircularProgressIndicator()),
                  builder: (_, exerciseList) => exerciseList == null
                      ? const SizedBox.shrink()
                      : Column(
                          children: exerciseList.map(
                            (exercise) {
                              // TODO: сделать количество повторений из бд + НЕ РАБОТАЕТ!!!
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: WorkoutExerciseWidget(
                                  exercise: exercise,
                                  onTap: () => wm.onExerciseTap(),
                                ),
                              );
                            },
                          ).toList(),
                        ),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: StartButton(
        onPressed: () => wm.onStartTap(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
