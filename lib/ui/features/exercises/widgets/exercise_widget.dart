import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/exercise/exercise.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/plate_widget.dart';

class ExerciseWidget extends StatelessWidget {
  const ExerciseWidget({
    super.key,
    required this.exercise,
    required this.onTap,
  });

  final Exercise exercise;
  final VoidCallback onTap;

  @override
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: PlateWidget(
        blurRadius: 35,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
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
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Column(
                  mainAxisSize: MainAxisSize.min, //
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      exercise.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Text(
                        exercise.description,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(
              Icons.navigate_next_rounded,
              color: Colors.black38,
            ),
          ],
        ),
      ),
    );
  }
}
