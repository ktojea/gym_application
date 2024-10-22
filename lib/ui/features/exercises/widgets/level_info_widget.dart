import 'package:flutter/material.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';

class LevelInfoWidget extends StatelessWidget {
  const LevelInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Column(
          children: [
            Text(
              "Уровень:",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.mainColorDarkest,
              ),
            ),
            Text(
              "Опытный",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Stack(
          alignment: Alignment.center,
          children: [
            CircularProgressIndicator(
              value: 0.7,
              strokeAlign: 4,
              strokeWidth: 5,
            ),
            Text("2", style: TextStyle(fontSize: 22)),
          ],
        ),
        SizedBox(height: 13),
      ],
    );
  }
}
