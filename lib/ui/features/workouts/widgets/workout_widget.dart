import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/muscle_group/muscle_group.dart';
import 'package:gym_application/data/models/local/prepared_workout/prepared_workout.dart';
import 'package:gym_application/ui/widgets/info/muscle_icons_grid_widget.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/plate_widget.dart';

class WorkoutWidget extends StatelessWidget {
  const WorkoutWidget({
    super.key,
    required this.workout,
    required this.onTap,
    required this.muscleGroupListListenable,
    required this.onFavoriteTap,
  });

  final PreparedWorkout workout;
  final ValueListenable<EntityState<List<MuscleGroup>>>
      muscleGroupListListenable;
  final void Function(int id) onTap;
  final VoidCallback onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(workout.id),
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
                      fontSize: 15.5,
                      color: AppColors.mainColorDarkest,
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () => onFavoriteTap(),
                  child: Icon(
                    workout.isFav
                        ? Icons.star_rounded
                        : Icons.star_border_rounded,
                    color: AppColors.secondColorDark,
                  ),
                ),
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
            MuscleIconsGridWidget(
              muscleGroupListListenable: muscleGroupListListenable,
            ),
          ],
        ),
      ),
    );
  }
}
