import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/muscle_group/muscle_group.dart';
import 'package:gym_application/ui/features/workout/widgets/start_button.dart';
import 'package:gym_application/ui/features/workout/widgets/workout_exercise_widget.dart';
import 'package:gym_application/ui/features/workout/widgets/workout_extended_widget.dart';
import 'package:gym_application/ui/features/workout/workout_wm.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/main_app_bar_widget.dart';
import 'package:gym_application/ui/widgets/decoration/text_with_filter_widget.dart';

@RoutePage()
class WorkoutScreen extends ElementaryWidget<IWorkoutScreenWidgetModel> {
  const WorkoutScreen({
    super.key,
    required this.preparedWorkoutId,
    required this.muscleGroups,
  }) : super(defaultWorkoutScreenWidgetModelFactory);

  final int preparedWorkoutId;
  final List<MuscleGroup> muscleGroups;

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
      body: EntityStateNotifierBuilder(
        listenableEntityState: wm.preparedWorkoutListenable,
        loadingBuilder: (_, __) => const Center(child: CircularProgressIndicator()),
        builder: (_, preparedWorkout) => preparedWorkout == null
            ? const SizedBox()
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView(
                  children: [
                    WorkoutExtendedWidget(
                      workout: preparedWorkout,
                      onFavoriteTap: () => wm.onFavoriteTap(),
                      muscleGroupList: muscleGroups,
                    ),
                    const SizedBox(height: 20),
                    const TextWithFilterWidget(
                      mainText: 'Упражнения',
                      secondText: 'Все упражнения',
                    ),
                    const SizedBox(height: 20),
                    ...List.generate(
                      preparedWorkout.exercises.length,
                      (i) => Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: WorkoutExerciseWidget(
                          number: i + 1,
                          exercise: preparedWorkout.exercises[i],
                          onTap: (equipmentId, exerciseId) => wm.onExerciseTap(equipmentId, exerciseId),
                        ),
                      ),
                    ),
                    const SizedBox(height: 100),
                  ],
                ),
              ),
      ),
      floatingActionButton: StartButton(
        onPressed: () => wm.onStartTap(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
