import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    required this.imageUrl,
    this.borderColor = Colors.white,
    this.borderWeight = 7,
    this.borderRadius = 20,
    this.shadowColor = const Color.fromRGBO(173, 175, 235, 1),
  });

  final String? imageUrl;
  final double borderWeight;
  final Color borderColor;
  final Color shadowColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: borderWeight,
          color: borderColor,
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 50,
            color: shadowColor,
            spreadRadius: -10,
          )
        ],
      ),
      child: CircleAvatar(
        radius: borderRadius,
        backgroundImage: NetworkImage(
          imageUrl ?? ' https://as2.ftcdn.net/v2/jpg/04/10/43/77/1000_F_410437733_hdq4Q3QOH9uwh0mcqAhRFzOKfrCR24Ta.jpg',
        ),
      ),
    );
  }
}
