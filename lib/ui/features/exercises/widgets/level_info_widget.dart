import 'package:flutter/material.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';

class LevelInfoWidget extends StatelessWidget {
  const LevelInfoWidget({
    super.key,
    required this.trainingLevel,
  });

  final int trainingLevel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            const Text(
              "Уровень:",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.mainColorDarkest,
              ),
            ),
            Text(
              trainingLevel == 1
                  ? "Начинающий"
                  : trainingLevel == 2
                      ? "Опытный"
                      : "Профи",
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Stack(
          alignment: Alignment.center,
          children: [
            const CircularProgressIndicator(
              value: 0.7,
              strokeAlign: 4,
              strokeWidth: 5,
            ),
            Text("$trainingLevel", style: TextStyle(fontSize: 22)),
          ],
        ),
        const SizedBox(height: 13),
      ],
    );
  }
}
