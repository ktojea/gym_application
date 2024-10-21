import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/exercises/exercises_wm.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/main_app_bar_widget.dart';
import 'package:gym_application/ui/widgets/decoration/plate_widget.dart';
import 'package:gym_application/ui/widgets/decoration/separator_text_widget.dart';

@RoutePage()
class ExercisesScreen extends ElementaryWidget<IExercisesScreenWidgetModel> {
  const ExercisesScreen({super.key})
      : super(defaultExercisesScreenWidgetModelFactory);

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
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: SeparatorTextWidget(
              mainText: "*Группа мышц*",
            ),
          ),
          SizedBox(height: 25),
          SizedBox(
            child: PlateWidget(
              child: Column(
                children: [
                  Text("Ваш уровень"),
                  CircularProgressIndicator(
                    value: 0.7,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: SeparatorTextWidget(
              mainText: "1-й уровень",
              secondText: "Все",
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: SeparatorTextWidget(
              mainText: "Ваш текущий уровень",
              secondText: "Все",
              color: AppColors.secondColorDarkest,
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: SeparatorTextWidget(
              mainText: "3-й уровень",
              secondText: "Все",
            ),
          ),
        ],
      ),
    );
  }
}
