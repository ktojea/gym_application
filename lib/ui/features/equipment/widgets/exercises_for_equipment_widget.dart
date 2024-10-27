import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/exercise_in_list/exercise_in_list.dart';
import 'package:gym_application/ui/widgets/decoration/text_with_filter_widget.dart';
import 'package:gym_application/ui/widgets/info/exercise_widget.dart';

class ExercisesForEquipmentWidget extends StatelessWidget {
  const ExercisesForEquipmentWidget({
    super.key,
    required this.currentExerciseId,
    required this.exercises,
    required this.muscleGroypId,
    required this.onExerciseTap,
  });

  final int? currentExerciseId;
  final int? muscleGroypId;
  final List<ExerciseInList> exercises;
  final void Function(int exerciseId, int equipmentId) onExerciseTap;

  @override
  Widget build(BuildContext context) {
    late final List<ExerciseInList> muscleGroupExercises;
    late final List<ExerciseInList> anotherExercises;

    if (muscleGroypId != null) {
      muscleGroupExercises =
          exercises.where((e) => e.id != currentExerciseId && e.muscleGroupId == muscleGroypId).toList();
      anotherExercises = exercises.where((e) => e.muscleGroupId != muscleGroypId).toList();
    } else {
      anotherExercises = exercises;
    }

    return Column(
      children: [
        if (muscleGroypId != null && muscleGroupExercises.isNotEmpty) ...[
          const TextWithFilterWidget(
            mainText: 'Выбранная группа мышц',
            secondText: 'Этот тренажер',
          ),
          const SizedBox(height: 10),
          ...muscleGroupExercises.map(
            (e) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: ExerciseWidget(
                exercise: e,
                onTap: onExerciseTap,
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
        TextWithFilterWidget(
          mainText: muscleGroypId != null ? "Другие мышцы" : "Упражнения",
          secondText: 'Этот тренажер',
        ),
        const SizedBox(height: 10),
        ...anotherExercises.map(
          (e) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: ExerciseWidget(
              exercise: e,
              onTap: onExerciseTap,
            ),
          ),
        ),
        if (anotherExercises.isEmpty) const Text('Скоро добавим...'),
      ],
    );
  }
}
