import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/equipment/equipment_wm.dart';
import 'package:gym_application/ui/features/equipment/widgets/equipment_description_widget.dart';
import 'package:gym_application/ui/features/equipment/widgets/exercise_description_widget.dart';
import 'package:gym_application/ui/features/equipment/widgets/exercises_for_equipment_widget.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/main_app_bar_widget.dart';
import 'package:gym_application/ui/widgets/info/ai_helper_widget.dart';

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
                EntityStateNotifierBuilder(
                  listenableEntityState: wm.equipmentListenable,
                  loadingBuilder: (_, __) => const Center(child: CircularProgressIndicator()),
                  builder: (_, equipment) => equipment == null
                      ? const SizedBox()
                      : EquipmentDescriptionWidget(
                          equipment: equipment,
                        ),
                ),
                const SizedBox(height: 25),
                if (exerciseId != null) ...[
                  ExerciseDescriptionWidget(
                    exerciseLisenable: wm.exerciseLisenable,
                    equipmentListenable: wm.equipmentListenable,
                  ),
                  const SizedBox(height: 25),
                ],
                if (exerciseId != null) ...[
                  EntityStateNotifierBuilder(
                    listenableEntityState: wm.aiTextListenable,
                    loadingBuilder: (_, __) => const Center(child: CircularProgressIndicator()),
                    builder: (_, aiText) => aiText == null
                        ? const SizedBox()
                        : AiHelperWidget(
                            title: 'Рекомендации для вас',
                            text: aiText,
                          ),
                  ),
                  const SizedBox(height: 25),
                ],
                ValueListenableBuilder(
                  valueListenable: wm.muscleGroupIdListenable,
                  builder: (_, muscleGroupId, __) => EntityStateNotifierBuilder(
                    listenableEntityState: wm.exercisesForEquipmentLisenable,
                    loadingBuilder: (_, __) => const Center(child: CircularProgressIndicator()),
                    builder: (_, exercisesForEquipment) => exercisesForEquipment == null
                        ? const SizedBox()
                        : ExercisesForEquipmentWidget(
                            currentExerciseId: exerciseId,
                            exercises: exercisesForEquipment,
                            muscleGroypId: muscleGroupId,
                            onExerciseTap: wm.onExerciseTap,
                          ),
                  ),
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
