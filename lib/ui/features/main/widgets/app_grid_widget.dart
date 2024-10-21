import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/muscle_group/muscle_group.dart';
import 'package:gym_application/ui/features/main/widgets/muscle_group_widget.dart';

class AppGridWidget extends StatelessWidget {
  final List<MuscleGroup> muscleGroupList;
  final VoidCallback onTap;

  static const double spacing = 10;

  const AppGridWidget({
    super.key,
    required this.muscleGroupList,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: spacing,
      runSpacing: spacing,
      children: muscleGroupList.map((muscleGroup) {
        return SizedBox(
          width: (MediaQuery.of(context).size.width - 50 - spacing) / 2,
          child: MuscleGroupWidget(
            muscleGroup: muscleGroup,
            onTap: onTap,
          ),
        );
      }).toList(),
    );
  }
}
