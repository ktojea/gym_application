import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/exercises/exercises_wm.dart';
import 'package:gym_application/ui/features/exercises/widgets/exercises_by_level_widget.dart';
import 'package:gym_application/ui/features/exercises/widgets/exercises_screen_full_statisticks_widget.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/main_app_bar_widget.dart';

@RoutePage()
class ExercisesScreen extends ElementaryWidget<IExercisesScreenWidgetModel> {
  const ExercisesScreen({super.key}) : super(defaultExercisesScreenWidgetModelFactory);

  @override
  Widget build(IExercisesScreenWidgetModel wm) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: MainAppBarWidget(
            title: null,
          ),
        ),
      ),
      body: EntityStateNotifierBuilder(
        listenableEntityState: wm.muscleGroupLevelListsListenable,
        loadingBuilder: (_, __) => const Center(child: CircularProgressIndicator()),
        builder: (_, muscleGroupLevelLists) => muscleGroupLevelLists == null
            ? const SizedBox()
            : ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "*Группа мышц*",
                          style: TextStyle(
                            color: AppColors.mainColorDarkest,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 25),
                        const ExercisesScreenFullStatisticksWidget(),
                        const SizedBox(height: 25),
                        ExercisesByLevelWidget(
                          levelName: "Начинающий",
                          exercises: muscleGroupLevelLists.beginnerList,
                          onTap: wm.onExerciseTap,
                          difficulty: 1,
                        ),
                        const SizedBox(height: 25),
                        ExercisesByLevelWidget(
                          levelName: "Опытный",
                          exercises: muscleGroupLevelLists.experiencedList,
                          onTap: wm.onExerciseTap,
                          difficulty: 2,
                        ),
                        const SizedBox(height: 25),
                        ExercisesByLevelWidget(
                          levelName: "Профессионал",
                          exercises: muscleGroupLevelLists.professional,
                          onTap: wm.onExerciseTap,
                          difficulty: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
