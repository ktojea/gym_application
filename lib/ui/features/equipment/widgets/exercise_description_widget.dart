import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/exercise/exercise.dart';
import 'package:gym_application/data/models/local/exercise_media/exercise_media.dart';
import 'package:gym_application/ui/features/equipment/widgets/description_widget.dart';
import 'package:gym_application/ui/features/equipment/widgets/recommendations_for_exercise_widget.dart';
import 'package:gym_application/ui/features/equipment/widgets/text_with_image_widget.dart';
import 'package:gym_application/ui/widgets/decoration/plate_widget.dart';

class ExerciseDescriptionWidget extends StatelessWidget {
  const ExerciseDescriptionWidget({
    super.key,
    required this.exerciseLisenable,
    required this.exerciseMediaListListenable,
  });

  final ValueNotifier<EntityState<Exercise>> exerciseLisenable;
  final ValueNotifier<EntityState<List<ExerciseMedia>>> exerciseMediaListListenable;

  static const double spacing = 25;

  @override
  Widget build(BuildContext context) {
    return EntityStateNotifierBuilder(
      listenableEntityState: exerciseLisenable,
      loadingBuilder: (_, __) => const Center(child: CircularProgressIndicator()),
      builder: (_, exercise) => exercise == null
          ? const SizedBox.shrink()
          : PlateWidget(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: TextWithImageWidget(
                      label: "Упражнение",
                      name: exercise.name,
                      imageUrl: exercise.imageUrl,
                    ),
                  ),
                  const SizedBox(height: 12),
                  DescriptionWidget(description: exercise.description),
                  const SizedBox(height: 12),
                  EntityStateNotifierBuilder(
                    listenableEntityState: exerciseMediaListListenable,
                    loadingBuilder: (_, __) => const Center(child: CircularProgressIndicator()),
                    builder: (_, exerciseMediaList) => exerciseMediaList == null
                        ? const SizedBox.shrink()
                        : RecommendationsForExerciseWidget(
                            exerciseMediaList: exerciseMediaList,
                          ),
                  ),
                ],
              ),
            ),
    );
  }
}
