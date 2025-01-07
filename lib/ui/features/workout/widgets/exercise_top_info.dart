import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/images/image_with_insurance.dart';
import 'package:gym_application/data/models/local/exercise_in_list_workout/exercise_in_list_workout.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';

class ExerciseTopInfo extends StatelessWidget {
  const ExerciseTopInfo({
    super.key,
    required this.exercise,
  });

  final ExerciseInListWorkout exercise;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadiusDirectional.circular(15),
          child: SizedBox.square(
            dimension: 70,
            child: ColoredBox(
              color: AppColors.mainColor,
              child: ImageWithInsurance(
                imageUrl: exercise.imageUrl ?? '',
                assetPath: 'assets/images/not_found.png',
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                exercise.name.trim(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Expanded(
                child: Text(
                  exercise.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.black38,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
