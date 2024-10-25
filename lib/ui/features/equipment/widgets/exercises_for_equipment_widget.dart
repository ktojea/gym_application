import 'package:flutter/material.dart';
import 'package:gym_application/ui/widgets/decoration/text_with_filter_widget.dart';

class ExercisesForEquipmentWidget extends StatelessWidget {
  const ExercisesForEquipmentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextWithFilterWidget(
          mainText: "Еще упражнения",
          secondText: "Этот тренажер",
        ),
      ],
    );
  }
}
