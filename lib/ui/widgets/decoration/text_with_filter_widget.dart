import 'package:flutter/material.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';

class TextWithFilterWidget extends StatelessWidget {
  const TextWithFilterWidget({
    super.key,
    required this.mainText,
    this.secondText,
    this.color = AppColors.mainColorDarkest,
  });

  final String mainText;
  final String? secondText;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          mainText,
          style: TextStyle(
            color: color,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        if (secondText != null)
          Row(
            children: [
              Text(
                secondText!,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black38,
                ),
              ),
              const Icon(
                Icons.keyboard_arrow_down_sharp,
                color: Colors.black38,
              ),
            ],
          ),
      ],
    );
  }
}
