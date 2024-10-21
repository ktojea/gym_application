import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/exercises/exercises_wm.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/main_app_bar_widget.dart';
import 'package:gym_application/ui/widgets/decoration/plate_widget.dart';
import 'package:gym_application/ui/widgets/decoration/text_with_filter_widget.dart';

@RoutePage()
class ExercisesScreen extends ElementaryWidget<IExercisesScreenWidgetModel> {
  const ExercisesScreen({super.key}) : super(defaultExercisesScreenWidgetModelFactory);

  @override
  Widget build(IExercisesScreenWidgetModel wm) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: MainAppBarWidget(
            onTap: () {},
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
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
            SizedBox(
              width: wm.mediaQuery.size.width / 3,
              child: const PlateWidget(
                child: Text("Ваш уровень"),
              ),
            ),
            const SizedBox(height: 25),
            const TextWithFilterWidget(
              mainText: "Начинающий",
              secondText: "Все",
            ),
            const SizedBox(height: 25),
            const TextWithFilterWidget(
              mainText: "Опытный",
              secondText: "Все",
            ),
            const SizedBox(height: 25),
            const TextWithFilterWidget(
              mainText: "Профессионал",
              secondText: "Все",
            ),
          ],
        ),
      ),
    );
  }
}
