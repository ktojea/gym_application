import 'package:flutter/material.dart';

class Plate extends StatelessWidget {
  const Plate({
    super.key,
    required this.child,
    this.padding,
  });

  final Widget child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: padding ?? const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(142, 145, 245, 1),
              blurRadius: 60,
              spreadRadius: -20,
            ),
          ]),
      child: child,
    );
  }
}
