import 'package:flutter/material.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';

class TextWithImageWidget extends StatelessWidget {
  const TextWithImageWidget({
    super.key,
    required this.spacing,
    required this.name,
    required this.imageUrl,
    this.color = AppColors.mainColorDarkest,
    required this.label,
  });

  final String label;
  final String name;
  final String imageUrl;
  final Color color;

  final double spacing;

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
          child: SizedBox(
            height: (MediaQuery.of(context).size.width - 100 - spacing) / 2,
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
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
