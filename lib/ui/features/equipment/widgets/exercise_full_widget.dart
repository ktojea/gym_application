import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/equipment/equipment.dart';
import 'package:gym_application/data/models/local/exercise/exercise.dart';
import 'package:gym_application/data/models/local/exercise_media/exercise_media.dart';
import 'package:gym_application/ui/features/equipment/widgets/description_widget.dart';
import 'package:gym_application/ui/features/equipment/widgets/text_with_image_widget.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/plate_widget.dart';

class ExerciseFullWidget extends StatelessWidget {
  const ExerciseFullWidget({
    super.key,
    required this.exerciseLisenable,
    required this.equipmentListenable,
    required this.exerciseMediaListListenable,
  });

  final ValueNotifier<EntityState<Exercise>> exerciseLisenable;
  final ValueNotifier<EntityState<Equipment>> equipmentListenable;
  final ValueNotifier<EntityState<List<ExerciseMedia>>>
      exerciseMediaListListenable;

  static const double spacing = 25;

  @override
  Widget build(BuildContext context) {
    return PlateWidget(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: (MediaQuery.of(context).size.width - 100 - spacing) / 2,
                child: EntityStateNotifierBuilder(
                  listenableEntityState: exerciseLisenable,
                  loadingBuilder: (_, __) =>
                      const Center(child: CircularProgressIndicator()),
                  builder: (_, exercise) => exercise == null
                      ? const SizedBox.shrink()
                      : TextWithImageWidget(
                          label: "Упражнение",
                          name: exercise.name,
                          imageUrl: exercise.imageUrl,
                          spacing: spacing,
                        ),
                ),
              ),
              SizedBox(
                width: (MediaQuery.of(context).size.width - 100 - spacing) / 2,
                child: EntityStateNotifierBuilder(
                  listenableEntityState: equipmentListenable,
                  loadingBuilder: (_, __) =>
                      const Center(child: CircularProgressIndicator()),
                  builder: (_, equipment) => equipment == null
                      ? const SizedBox.shrink()
                      : TextWithImageWidget(
                          label: "Тренажер",
                          name: equipment.name,
                          imageUrl: equipment.imageUrl,
                          color: AppColors.secondColorDarkest,
                          spacing: spacing,
                        ),
                ),
              ),
            ],
          ),
          EntityStateNotifierBuilder(
            listenableEntityState: exerciseLisenable,
            loadingBuilder: (_, __) =>
                const Center(child: CircularProgressIndicator()),
            builder: (_, exercise) => exercise == null
                ? const SizedBox.shrink()
                : DescriptionWidget(
                    description: exercise.description,
                  ),
          ),
          EntityStateNotifierBuilder(
            listenableEntityState: exerciseMediaListListenable,
            loadingBuilder: (_, __) =>
                const Center(child: CircularProgressIndicator()),
            builder: (_, exerciseMediaList) => exerciseMediaList == null
                ? const SizedBox.shrink()
                : HelpForExerciseWidget(
                    exerciseMediaList: exerciseMediaList,
                  ),
          ),
        ],
      ),
    );
  }
}

class HelpForExerciseWidget extends StatelessWidget {
  const HelpForExerciseWidget({
    super.key,
    required this.exerciseMediaList,
  });

  final List<ExerciseMedia> exerciseMediaList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        const Text(
          "Подсказки в выполнении",
          style: TextStyle(
            color: AppColors.mainColorDarkest,
            fontSize: 19,
            fontWeight: FontWeight.w600,
          ),
        ),
        Center(
          child: Column(
            children: exerciseMediaList
                .map((exerciseMedia) => Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 1.7,
                        child: Image(image: NetworkImage(exerciseMedia.url)),
                      ),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
