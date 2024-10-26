import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/muscle_group/muscle_group.dart';
import 'package:gym_application/ui/features/main/widgets/muscle_group_widget.dart';

class MuscleGroupGridWidget extends StatelessWidget {
  const MuscleGroupGridWidget({
    super.key,
    required this.items,
    required this.onTap,
  });

  final List<MuscleGroup> items;
  final void Function(MuscleGroup muscleGroup) onTap;

  @override
  Widget build(BuildContext context) {
    const spacing = 10.0;

    return Wrap(
      spacing: spacing,
      runSpacing: spacing,
      children: List.generate(
        items.length,
        (index) {
          return SizedBox.square(
            dimension: (MediaQuery.of(context).size.width - 50 - spacing) / 2,
            child: MuscleGroupWidget(
              index: index,
              muscleGroup: items[index],
              onTap: onTap,
            ),
          );
        },
      ),
    );
  }
}
