import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/workouts/workouts_wm.dart';
import 'package:gym_application/ui/features/workouts/widgets/workout_widget.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/main_app_bar_widget.dart';
import 'package:gym_application/ui/widgets/decoration/text_with_filter_widget.dart';

@RoutePage()
class WorkoutsScreen extends ElementaryWidget<IWorkoutsScreenWidgetModel> {
  const WorkoutsScreen({super.key})
      : super(defaultWorkoutsScreenWidgetModelFactory);

  @override
  Widget build(IWorkoutsScreenWidgetModel wm) {
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
                const TextWithFilterWidget(
                  mainText: "Тренировки",
                  secondText: 'Все тренировки',
                ),
                const SizedBox(height: 20),
                EntityStateNotifierBuilder(
                  listenableEntityState: wm.practiceListListenable,
                  loadingBuilder: (_, __) =>
                      const Center(child: CircularProgressIndicator()),
                  builder: (_, practiceList) => practiceList == null
                      ? const SizedBox.shrink()
                      : Column(
                          children: practiceList
                              .map(
                                (workout) => Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: WorkoutWidget(
                                    workout: workout,
                                    muscleGroupListListenable:
                                        wm.muscleGroupListListenable,
                                    onTap: (id) => wm.onWorkoutTap(),
                                    onFavoriteTap: () => wm.onFavoriteTap(),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => wm.onAddWorkoutTap(),
        backgroundColor: AppColors.mainColorDark,
        foregroundColor: Colors.white,
        tooltip: "Создать собственную тренировку",
        child: const Icon(Icons.add),
      ),
    );
  }
}
