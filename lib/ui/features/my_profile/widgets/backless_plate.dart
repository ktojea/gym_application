import 'package:flutter/material.dart';

class BacklessPlate extends StatelessWidget {
  const BacklessPlate({
    super.key,
    required this.value,
    required this.unit,
    required this.label,
    this.color,
  });

  final num? value;
  final String unit;
  final String label;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: value == null ? '-' : value.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: color ?? const Color.fromRGBO(59, 41, 122, 1),
                        ),
                      ),
                      if (value != null) ...[
                        const WidgetSpan(child: SizedBox(width: 2)),
                        TextSpan(
                          text: unit,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: color ?? const Color.fromRGBO(59, 41, 122, 1),
                          ),
                        ),
                      ]
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
