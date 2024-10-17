import 'package:flutter/material.dart';

class Plate extends StatelessWidget {
  const Plate({
    super.key,
    required this.child,
    this.padding,
    this.blurRadius = 60,
  });

  final Widget child;
  final EdgeInsets? padding;
  final double blurRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: padding ?? const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(142, 145, 245, 1),
            blurRadius: blurRadius,
            spreadRadius: -20,
          ),
        ],
      ),
      child: child,
    );
  }
}
