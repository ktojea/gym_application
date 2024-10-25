import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/user/user.dart';
import 'package:gym_application/ui/features/my_profile/widgets/local_body_info.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/plate_widget.dart';
import 'package:gym_application/ui/widgets/user_avatar.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({
    super.key,
    required this.user,
    required this.onEditTap,
  });

  final User user;
  final VoidCallback onEditTap;

  @override
  Widget build(BuildContext context) {
    return PlateWidget(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () => onEditTap(),
              child: const Icon(
                Icons.edit,
                color: AppColors.mainColorDarkest,
              ),
            ),
          ),
          const SizedBox(height: 15),
          UserAvatar(
            imageUrl: user.imageUrl,
            borderRadius: 80,
            borderWeight: 6,
            shadowColor: AppColors.mainColorMedium,
          ),
          const SizedBox(height: 15),
          Text(
            "${user.name} ${user.surname}",
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: AppColors.mainColorDarkest,
            ),
          ),
          Text(
            "${user.age} лет",
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 30),
          LocalBodyInfo(
            height: user.height,
            weight: user.weight,
            bmi: 228,
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
