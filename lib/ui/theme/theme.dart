import 'package:flutter/material.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';

class AppTheme {
  static final ThemeData themeData = ThemeData(
    primaryColor: Colors.blue,
    hintColor: Colors.red,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: AppColors.mainColorDarkest,
        fontSize: 28,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
