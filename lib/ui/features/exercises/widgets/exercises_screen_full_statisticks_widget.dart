import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/exercises/widgets/level_info_widget.dart';
import 'package:gym_application/ui/widgets/decoration/plate_widget.dart';
import 'package:gym_application/ui/widgets/info/statistics_widget.dart';

class ExercisesScreenFullStatisticksWidget extends StatelessWidget {
  const ExercisesScreenFullStatisticksWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: PlateWidget(
            child: LevelInfoWidget(trainingLevel: 2),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: StatisticsWidget(),
        ),
      ],
    );
  }
}
