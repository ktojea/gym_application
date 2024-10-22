import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/exercise/exercise.dart';
import 'package:gym_application/ui/features/exercises/widgets/exercise_widget.dart';

class ExercisesBuilderWidget extends StatelessWidget {
  const ExercisesBuilderWidget({
    super.key,
    required this.exerciseListListenable,
    required this.onTap,
    required this.difficulty,
  });

  final ValueListenable<EntityState<List<Exercise>>> exerciseListListenable;
  final VoidCallback onTap;
  final int difficulty;

  @override
  Widget build(BuildContext context) {
    return EntityStateNotifierBuilder(
      listenableEntityState: exerciseListListenable,
      loadingBuilder: (_, __) =>
          const Center(child: CircularProgressIndicator()),
      builder: (_, exerciseList) => exerciseList == null
          ? const SizedBox()
          : Column(
              children: exerciseList
                  .map(
                    (exercise) =>  exercise.difficulty != difficulty
                    ? const SizedBox.shrink()
                    : Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ExerciseWidget(
                        exercise: exercise,
                        onTap: () => onTap(),
                      ),
                    ),
                  )
                  .toList(),
            ),
    );
  }
}
