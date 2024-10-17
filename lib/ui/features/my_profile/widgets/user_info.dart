import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/my_profile/widgets/local_body_info.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/plate.dart';
import 'package:gym_application/ui/widgets/user_avatar.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    required this.age,
    required this.firstName,
    required this.lastName,
    required this.height,
    required this.weight,
    required this.bmi,
  });

  final String firstName;
  final String lastName;
  final int age;
  final int height;
  final double weight;
  final int bmi;

  @override
  Widget build(BuildContext context) {
    return Plate(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              child: const Icon(
                Icons.edit,
                color: AppColors.mainColorDarkest,
              ),
            ),
          ),
          const SizedBox(height: 15),
          const UserAvatar(
            size: 110,
            borderWeight: 6,
            shadowColor: AppColors.mainColorMedium,
          ),
          const SizedBox(height: 15),
          Text(
            "$firstName $lastName",
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: AppColors.mainColorDarkest,
            ),
          ),
          Text(
            "$age лет",
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 30),
          LocalBodyInfo(
            height: height,
            weight: weight,
            bmi: bmi,
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
