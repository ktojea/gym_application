import 'package:flutter/material.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding:
            const WidgetStatePropertyAll(EdgeInsets.fromLTRB(25, 15, 25, 15)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        backgroundColor: const WidgetStatePropertyAll(AppColors.mainColorDark),
        foregroundColor: const WidgetStatePropertyAll(Colors.white),
      ),
      onPressed: () => onPressed(),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Начать',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(width: 5),
          Icon(Icons.start_rounded),
        ],
      ),
    );
  }
}
