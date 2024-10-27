import 'package:flutter/material.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';

class PulseWithTrainingPurposeWidget extends StatelessWidget {
  const PulseWithTrainingPurposeWidget({
    super.key,
    required this.pulse,
  });

  final int pulse;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.red,
          ),
          child: SizedBox(
            width: 100,
            child: Row(
              children: [
                const Icon(
                  Icons.favorite_border_rounded,
                  color: Colors.white,
                ),
                const SizedBox(width: 10),
                Text(
                  pulse.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.secondColorDark,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Цель:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Проработка грудных мышц',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
