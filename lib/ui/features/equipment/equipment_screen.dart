import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/equipment/equipment_wm.dart';
import 'package:gym_application/ui/features/equipment/widgets/exercise_full_widget.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/main_app_bar_widget.dart';
import 'package:gym_application/ui/widgets/decoration/text_with_filter_widget.dart';

@RoutePage()
class EquipmentScreen extends ElementaryWidget<IEquipmentScreenWidgetModel> {
  const EquipmentScreen({super.key}) : super(defaultEquipmentScreenWidgetModelFactory);

  @override
  Widget build(IEquipmentScreenWidgetModel wm) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: MainAppBarWidget(
            title: null,
          ),
        ),
        backgroundColor: AppColors.mainColor,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                ExerciseFullWidget(
                  exerciseLisenable: wm.exerciseLisenable,
                  equipmentListenable: wm.equipmentListenable,
                  exerciseMediaListListenable: wm.exerciseMediaListenable,
                ),
                const SizedBox(height: 25),
                const TextWithFilterWidget(
                  mainText: "Еще упражнения",
                  secondText: "Этот тренажер",
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
