import 'package:flutter/material.dart';
import 'package:gym_application/data/enums/training_level_enum.dart';
import 'package:gym_application/data/models/local/exercise_in_list_workout/exercise_in_list_workout.dart';
import 'package:gym_application/ui/features/my_profile/widgets/backless_plate.dart';
import 'package:gym_application/ui/features/workout/widgets/exercise_top_info.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/plate_widget.dart';

class WorkoutExerciseWidget extends StatelessWidget {
  const WorkoutExerciseWidget({
    super.key,
    required this.number,
    required this.exercise,
    required this.onTap,
    this.blurRadius = 35,
  });

  final int number;
  final ExerciseInListWorkout exercise;
  final double blurRadius;
  final void Function(int equipmentId, int exerciseId) onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      child: GestureDetector(
        onTap: () => onTap(exercise.equipmentId, exercise.id),
        child: Stack(
          children: [
            PlateWidget(
              blurRadius: blurRadius,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 84,
                    child: ExerciseTopInfo(exercise: exercise),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      BacklessPlate(
                        value: exercise.repetitions,
                        unit: "",
                        label: "Повторения",
                      ),
                      BacklessPlate(
                        value: exercise.sets,
                        unit: "",
                        label: "Подходы",
                      ),
                      BacklessPlate(
                        value: exercise.weight,
                        unit: "кг",
                        label: "Вес",
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: List.generate(
                      3,
                      (i) => i < TrainingLevelEnum.getScoreValue(exercise.difficulty)
                          ? const Icon(Icons.star, color: AppColors.secondColorDark)
                          : const Icon(Icons.star_border, color: AppColors.secondColorDark),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                backgroundColor: AppColors.secondColorDark,
                child: Text(
                  number.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
