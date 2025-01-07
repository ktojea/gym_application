import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/images/image_with_insurance.dart';
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
  final void Function(MuscleGroup muscleGroup) onTap;

  @override
  Widget build(BuildContext context) {
    final color = (index % 4 == 1 || index % 4 == 2) ? AppColors.secondColorDark : AppColors.mainColorDark;

    return GestureDetector(
      onTap: () => onTap(muscleGroup),
      child: PlateWidget(
        blurRadius: 40,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: SizedBox.square(
                  dimension: 80,
                  child: ImageWithInsurance(
                    imageUrl: muscleGroup.imageUrl,
                    assetPath: 'assets/images/not_found.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
