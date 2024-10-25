import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/exercise/exercise.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/text_with_filter_widget.dart';
import 'package:gym_application/ui/widgets/info/exercise_widget.dart';

class ExercisesByLevelWidget extends StatefulWidget {
  const ExercisesByLevelWidget({
    super.key,
    required this.onTap,
    required this.difficulty,
    required this.exercises,
    required this.levelName,
  });

  final String levelName;
  final List<Exercise> exercises;
  final int difficulty;
  final VoidCallback onTap;

  @override
  State<ExercisesByLevelWidget> createState() => _ExercisesByLevelWidgetState();
}

class _ExercisesByLevelWidgetState extends State<ExercisesByLevelWidget> {
  final scrollController = FixedExtentScrollController();

  @override
  void initState() {
    scrollController.addListener(() {
      final index = scrollController.selectedItem;

      if (index == 0) {
        isStartNotifier.value = true;
        return;
      }

      if (index == widget.exercises.length ~/ 3) {
        isStartNotifier.value = false;
        return;
      }

      isStartNotifier.value = null;
    });
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  final isStartNotifier = ValueNotifier<bool?>(true);

  @override
  Widget build(BuildContext context) {
    final countPages = (widget.exercises.length / 3).ceil();

    final exercisesForListWheel = List.generate(
      countPages,
      (i) {
        final start = 3 * i;
        final end = i == countPages - 1 ? widget.exercises.length : 3 * (i + 1);
        final list = widget.exercises.sublist(start, end);

        return list;
      },
    );

    return Column(
      children: [
        TextWithFilterWidget(
          mainText: widget.levelName,
          secondText: "Все",
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 300,
                child: ListWheelScrollView.useDelegate(
                  itemExtent: 300,
                  perspective: 0.0015,
                  diameterRatio: 2.5,
                  controller: scrollController,
                  physics: const FixedExtentScrollPhysics(),
                  childDelegate: ListWheelChildBuilderDelegate(
                    childCount: exercisesForListWheel.length,
                    builder: (_, i) => Column(
                      children: exercisesForListWheel[i]
                          .map(
                            (e) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: ExerciseWidget(
                                exercise: e,
                                onTap: () => widget.onTap(),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            ValueListenableBuilder(
              valueListenable: isStartNotifier,
              builder: (_, isStart, __) => _IndicatorWidget(isStart: isStart),
            ),
          ],
        ),
      ],
    );
  }
}

class _IndicatorWidget extends StatelessWidget {
  const _IndicatorWidget({
    super.key,
    required this.isStart,
  });

  final bool? isStart;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '•',
          style: TextStyle(
            fontSize: isStart == true ? 30 : 10,
            color: AppColors.mainColorDarkest,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '•',
          style: TextStyle(
            fontSize: isStart == null ? 30 : 10,
            color: AppColors.mainColorDarkest,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '•',
          style: TextStyle(
            fontSize: isStart == false ? 30 : 10,
            color: AppColors.mainColorDarkest,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
