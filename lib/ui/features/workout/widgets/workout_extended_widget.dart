import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
    required this.muscleGroupListListenable,
  });

  final PreparedWorkout workout;
  final VoidCallback onFavoriteTap;
  final ValueListenable<EntityState<List<MuscleGroup>>>
      muscleGroupListListenable;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
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
                workout.isFav ? Icons.star_rounded : Icons.star_border_rounded,
                color: AppColors.secondColorDark,
                size: 30,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        PlateWidget(
          padding:
              const EdgeInsets.only(right: 25, left: 25, top: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Описание",
                style: TextStyle(
                  color: AppColors.mainColorDarkest,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                workout.description,
                style: const TextStyle(fontSize: 14.5),
              ),
              const SizedBox(height: 12),
              Center(
                child: Column(
                  children: [
                    const Text(
                      "Задействованные группы мышц:",
                      style: TextStyle(
                        color: AppColors.mainColorDarkest,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 3),
                    MuscleIconsGridWidget(
                      muscleGroupListListenable: muscleGroupListListenable,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
