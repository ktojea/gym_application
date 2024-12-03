import 'package:flutter/material.dart';
import 'package:gym_application/data/enums/training_level_enum.dart';
import 'package:gym_application/data/models/local/muscle_group/muscle_group.dart';
import 'package:gym_application/data/models/local/prepared_workout/prepared_workout.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/plate_widget.dart';
import 'package:gym_application/ui/widgets/info/muscle_icons_grid_widget.dart';

class WorkoutExtendedWidget extends StatelessWidget {
  const WorkoutExtendedWidget({
    super.key,
    required this.workout,
    required this.onFavoriteTap,
    required this.muscleGroupList,
  });

  final PreparedWorkout workout;
  final VoidCallback onFavoriteTap;
  final List<MuscleGroup> muscleGroupList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              workout.name,
              softWrap: true,
              style: const TextStyle(
                color: AppColors.mainColorDarkest,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 2),
            GestureDetector(
              onTap: () => onFavoriteTap(),
              child: Icon(
                workout.isFav ?? false ? Icons.favorite : Icons.favorite_border,
                color: Colors.red,
                size: 30,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        PlateWidget(
          padding: const EdgeInsets.only(right: 25, left: 25, top: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Описание",
                style: TextStyle(
                  color: AppColors.mainColorDarkest,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                workout.description,
                style: const TextStyle(fontSize: 14.5),
              ),
              const SizedBox(height: 12),
              const Text(
                "Задействованные группы мышц",
                style: TextStyle(
                  color: AppColors.mainColorDarkest,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 3),
              MuscleIconsGridWidget(
                muscleGroupList: muscleGroupList,
                size: 60,
              ),
              const SizedBox(height: 12),
              const Text(
                "Сложность",
                style: TextStyle(
                  color: AppColors.mainColorDarkest,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                TrainingLevelEnum.getNameFromValue(workout.trainingLevel),
                style: const TextStyle(fontSize: 14.5),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
