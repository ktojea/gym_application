import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/exercise/exercise.dart';
import 'package:gym_application/ui/widgets/decoration/text_with_filter_widget.dart';
import 'package:gym_application/ui/widgets/info/exercise_widget.dart';

class ExercisesByLevelWidget extends StatelessWidget {
  const ExercisesByLevelWidget({
    super.key,
    required this.onTap,
    required this.difficulty,
    required this.exercises,
    required this.levelName,
  });

  final String levelName;
  final List<Exercise> exercises;
  final int difficulty;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextWithFilterWidget(
          mainText: levelName,
          secondText: "Все",
        ),
        const SizedBox(height: 10),
        ...exercises.map(
          (exercise) => exercise.difficulty != difficulty
              ? const SizedBox.shrink()
              : Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ExerciseWidget(
                    exercise: exercise,
                    onTap: () => onTap(),
                  ),
                ),
        ),
      ],
    );
  }
}
