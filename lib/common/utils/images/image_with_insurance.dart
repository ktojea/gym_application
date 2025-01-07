import 'package:flutter/material.dart';

class ImageWithInsurance extends StatelessWidget {
  const ImageWithInsurance({
    super.key,
    required this.imageUrl,
    required this.assetPath,
    this.radius = 10,
  });

  final String imageUrl;
  final String assetPath;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) => ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            assetPath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
