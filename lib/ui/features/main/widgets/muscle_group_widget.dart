import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/muscle_group/muscle_group.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/plate_widget.dart';

class MuscleGroupWidget extends StatelessWidget {
  const MuscleGroupWidget({
    super.key,
    required this.muscleGroup,
    required this.onTap,
  });

  final MuscleGroup muscleGroup;
  final VoidCallback onTap;

  Color get textColor {
    final remainder = muscleGroup.id % 4;
    if ((remainder == 1) || (remainder == 2)) {
      return AppColors.secondColorDarkest;
    } else {
      return AppColors.mainColorDarkest;
    }
  }

  Color get iconColor {
    final remainder = muscleGroup.id % 4;
    if ((remainder == 1) || (remainder == 2)) {
      return AppColors.secondColorDark;
    } else {
      return AppColors.mainColorDark;
    }
  }

  @override
  Widget build(BuildContext context) {
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
                color: textColor,
              ),
            ),
            const SizedBox(height: 0),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.accessibility_new_rounded,
                size: 60,
                color: iconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
