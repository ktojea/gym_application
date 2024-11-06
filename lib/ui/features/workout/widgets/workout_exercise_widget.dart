import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/exercise/exercise.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/plate_widget.dart';

class WorkoutExerciseWidget extends StatelessWidget {
  const WorkoutExerciseWidget({
    super.key,
    required this.exercise,
    required this.onTap,
    this.blurRadius = 35,
  });

  final Exercise exercise;
  final double blurRadius;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: GestureDetector(
        onTap: () => onTap(),
        child: PlateWidget(
          blurRadius: blurRadius,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusDirectional.circular(15),
                child: SizedBox.square(
                  dimension: 55,
                  child: ColoredBox(
                      color: AppColors.mainColor,
                      child: Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(exercise.imageUrl),
                      )),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
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
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Text('8'),
            ],
          ),
        ),
      ),
    );
  }
}
