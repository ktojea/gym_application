import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/images/image_with_insurance.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';

class TextWithImageWidget extends StatelessWidget {
  const TextWithImageWidget({
    super.key,
    required this.label,
    required this.name,
    required this.imageUrl,
    this.color = AppColors.mainColorDarkest,
  });

  final String label;
  final String name;
  final String imageUrl;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
            color: color,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadiusDirectional.circular(15),
          child: SizedBox.square(
            dimension: 160,
            child: ImageWithInsurance(
              imageUrl: imageUrl,
              assetPath: 'assets/images/not_found.png',
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          name,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
