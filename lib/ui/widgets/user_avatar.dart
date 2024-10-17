import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    required this.size,
    this.borderColor = Colors.white,
    this.borderWeight = 7,
    this.shadowColor = const Color.fromRGBO(173, 175, 235, 1),
  });

  final double size;
  final double borderWeight;
  final Color borderColor;
  final Color shadowColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
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
      //TODO Сделать загрузку вместо контейнера
      child: Container(
        width: size,
        height: size,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
      ),
    );
  }
}
