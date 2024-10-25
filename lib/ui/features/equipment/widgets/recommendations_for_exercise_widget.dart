import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/exercise_media/exercise_media.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';

class RecommendationsForExerciseWidget extends StatelessWidget {
  const RecommendationsForExerciseWidget({
    super.key,
    required this.exerciseMediaList,
  });

  final List<ExerciseMedia> exerciseMediaList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Подсказки в выполнении",
          style: TextStyle(
            color: AppColors.mainColorDarkest,
            fontSize: 19,
            fontWeight: FontWeight.w600,
          ),
        ),
        Center(
          child: Column(
            children: exerciseMediaList
                .map((exerciseMedia) => Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 1.7,
                        child: Image(image: NetworkImage(exerciseMedia.url)),
                      ),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
