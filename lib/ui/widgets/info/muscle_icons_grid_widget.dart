import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/muscle_group/muscle_group.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';

class MuscleIconsGridWidget extends StatelessWidget {
  const MuscleIconsGridWidget({
    super.key,
    required this.muscleGroupList,
    this.size = 60,
  });

  final List<MuscleGroup> muscleGroupList;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: muscleGroupList
          .map(
            (muscleGroup) => Tooltip(
              message: muscleGroup.name,
              verticalOffset: -50,
              triggerMode: TooltipTriggerMode.tap,
              child: Padding(
                padding: const EdgeInsets.only(right: 2.5),
                child: ClipRRect(
                  borderRadius: BorderRadiusDirectional.circular(double.maxFinite),
                  child: SizedBox.square(
                    dimension: size,
                    child: ColoredBox(
                      color: AppColors.mainColor,
                      child: Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(muscleGroup.imageUrl),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
