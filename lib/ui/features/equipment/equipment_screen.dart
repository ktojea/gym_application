import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/equipment/equipment_wm.dart';
import 'package:gym_application/ui/features/equipment/widgets/equipment_description_widget.dart';
import 'package:gym_application/ui/features/equipment/widgets/exercise_description_widget.dart';
import 'package:gym_application/ui/features/equipment/widgets/exercises_for_equipment_widget.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/main_app_bar_widget.dart';

@RoutePage()
class EquipmentScreen extends ElementaryWidget<IEquipmentScreenWidgetModel> {
  const EquipmentScreen({
    required this.equipmentId,
    this.exerciseId,
    super.key,
  }) : super(defaultEquipmentScreenWidgetModelFactory);

  final int equipmentId;
  final int? exerciseId;

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const EquipmentDescriptionWidget(),
                const SizedBox(height: 25),
                if (exerciseId != null) ...[
                  ExerciseDescriptionWidget(
                    exerciseLisenable: wm.exerciseLisenable,
                    equipmentListenable: wm.equipmentListenable,
                  ),
                  const SizedBox(height: 25),
                ],
                const ExercisesForEquipmentWidget(),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
