import 'package:flutter/material.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/plate_widget.dart';

class TrainingsWidget extends StatelessWidget {
  const TrainingsWidget({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: const PlateWidget(
        color: AppColors.mainColorDark,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Тренировки",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Заготовленные планы упражнений для ваших занятий",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 12),
            Icon(
              Icons.sports_handball_rounded,
              size: 50,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
