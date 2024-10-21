import 'package:flutter/material.dart';

class PlateWidget extends StatelessWidget {
  const PlateWidget({
    super.key,
    required this.child,
    this.padding,
    this.blurRadius = 60,
    this.color = Colors.white,
  });

  final Widget child;
  final EdgeInsets? padding;
  final double blurRadius;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.maxFinite,
      padding: padding ?? const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: color,
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
