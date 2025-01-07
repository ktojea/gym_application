import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/images/image_with_insurance.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    required this.imageUrl,
    this.borderColor = Colors.white,
    this.shadowColor = const Color.fromRGBO(173, 175, 235, 1),
  });

  final String? imageUrl;
  final Color borderColor;
  final Color shadowColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            blurRadius: 50,
            color: shadowColor,
            spreadRadius: -10,
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(120),
        child: ImageWithInsurance(
          imageUrl: imageUrl!,
          assetPath: 'assets/images/not_found.png',
        ),
      ),
    );
  }
}
