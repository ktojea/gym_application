import 'package:flutter/material.dart';

class AppBarAnalogue extends StatelessWidget {
  const AppBarAnalogue({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: onTap,
          child: const Icon(
            Icons.arrow_back_ios,
            color: Color.fromRGBO(59, 41, 122, 1),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.question_mark,
            color: Color.fromRGBO(59, 41, 122, 1),
          ),
        ),
      ],
    );
  }
}
