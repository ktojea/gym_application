import 'package:flutter/material.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/user_avatar.dart';

class MainAppBarWidget extends StatelessWidget {
  const MainAppBarWidget({
    super.key,
    required this.onTap,
    this.title,
  });

  final String? title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        title == null
            ? const SizedBox()
            : Text(
                title!,
                style:const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.mainColorDarkest,
                ),
              ),
        GestureDetector(
          onTap: () => onTap(),
          child: const UserAvatar(
            size: 30,
            borderColor: AppColors.mainColorDark,
            borderWeight: 2.3,
            borderRadius: 3,
          ),
        ),
      ],
    );
  }
}
