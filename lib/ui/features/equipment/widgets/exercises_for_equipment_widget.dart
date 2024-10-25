import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/exercise/exercise.dart';
import 'package:gym_application/ui/widgets/decoration/text_with_filter_widget.dart';
import 'package:gym_application/ui/widgets/info/exercise_widget.dart';

class ExercisesForEquipmentWidget extends StatelessWidget {
  const ExercisesForEquipmentWidget({
    super.key,
    required this.exerciseListListenable,
  });

  final ValueNotifier<EntityState<List<Exercise>>> exerciseListListenable;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextWithFilterWidget(
          mainText: "Еще упражнения",
          secondText: "Этот тренажер",
        ),
        const SizedBox(width: 25),
        EntityStateNotifierBuilder(
          listenableEntityState: exerciseListListenable,
          builder: (_, exerciseList) => exerciseList == null
              ? const SizedBox.shrink()
              : Column(
                  children: exerciseList.map(
                    (exercise) => ExerciseWidget(exercise: exercise, onTap: () {}),
                  ).toList(),
                ),
        )
      ],
    );
  }
}
