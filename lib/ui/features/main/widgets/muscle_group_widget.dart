import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/muscle_group/muscle_group.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/plate_widget.dart';

class MuscleGroupWidget extends StatelessWidget {
  const MuscleGroupWidget({
    super.key,
    required this.index,
    required this.muscleGroup,
    required this.onTap,
  });

  final int index;
  final MuscleGroup muscleGroup;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = (index % 4 == 1 || index % 4 == 2) ? AppColors.secondColorDark : AppColors.mainColorDark;

    return GestureDetector(
      onTap: () => onTap(),
      child: PlateWidget(
        blurRadius: 40,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              muscleGroup.name,
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: color,
              ),
            ),
            const SizedBox(height: 0),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.accessibility_new_rounded,
                size: 60,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
