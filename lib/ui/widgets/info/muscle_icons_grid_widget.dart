import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/muscle_group/muscle_group.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';

class MuscleIconsGridWidget extends StatelessWidget {
  const MuscleIconsGridWidget({
    super.key,
    required this.muscleGroupListListenable,
    this.size = 24,
  });

  final ValueListenable<EntityState<List<MuscleGroup>>>
      muscleGroupListListenable;
  final double size;

  @override
  Widget build(BuildContext context) {
    return EntityStateNotifierBuilder(
      listenableEntityState: muscleGroupListListenable,
      loadingBuilder: (_, __) =>
          const Center(child: CircularProgressIndicator()),
      builder: (_, muscleGroupList) => muscleGroupList == null
          ? const SizedBox.shrink()
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: muscleGroupList
                  .map(
                    (muscleGroup) => Tooltip(
                      message: muscleGroup.name,
                      verticalOffset: -50,
                      triggerMode: TooltipTriggerMode.tap,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 2.5),
                        child: ClipRRect(
                          borderRadius: BorderRadiusDirectional.circular(
                              double.maxFinite),
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
            ),
    );
  }
}
