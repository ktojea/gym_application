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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: (MediaQuery.of(context).size.width - 50 - 10) / 3,
          child: const PlateWidget(
            child: LevelInfoWidget(),
          ),
        ),
        SizedBox(
          width: (MediaQuery.of(context).size.width - 50 - 10) * 2 / 3,
          child: const StatisticsWidget(),
        ),
      ],
    );
  }
}
