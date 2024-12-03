import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/muscle_group/muscle_group.dart';
import 'package:gym_application/data/models/local/prepared_workout_in_list/prepared_workout_in_list.dart';
import 'package:gym_application/ui/widgets/info/muscle_icons_grid_widget.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/plate_widget.dart';

class WorkoutWidget extends StatelessWidget {
  const WorkoutWidget({
    super.key,
    required this.workout,
    required this.onTap,
    required this.muscleGroupList,
    required this.onFavoriteTap,
  });

  final PreparedWorkoutInList workout;
  final List<MuscleGroup> muscleGroupList;
  final VoidCallback onTap;
  final VoidCallback onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: PlateWidget(
        blurRadius: 35,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 30,
                  child: Text(
                    workout.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: AppColors.mainColorDarkest,
                    ),
                  ),
                ),
                //TODO
                const Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                  size: 30,
                )
              ],
            ),
            const SizedBox(height: 5),
            Text(
              workout.description,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: const TextStyle(
                color: Colors.black38,
              ),
            ),
            const SizedBox(height: 9),
            MuscleIconsGridWidget(muscleGroupList: muscleGroupList),
          ],
        ),
      ),
    );
  }
}
