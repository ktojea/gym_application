import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/my_profile/widgets/backless_plate.dart';

class LocalBodyInfo extends StatelessWidget {
  const LocalBodyInfo({
    super.key,
    required this.height,
    required this.weight,
    required this.bmi,
  });

  final int height;
  final double weight;
  final int bmi;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          BacklessPlate(
            value: height,
            unit: "см",
            label: "Рост",
          ),
          const SizedBox(
            height: 40,
            child: VerticalDivider(
              color: Color.fromRGBO(59, 41, 122, 0.12),
              thickness: 2,
              width: 2,
            ),
          ),
          BacklessPlate(
            value: weight,
            unit: "кг",
            label: "Вес",
          ),
          const SizedBox(
            height: 40,
            child: VerticalDivider(
              color: Color.fromRGBO(59, 41, 122, 0.12),
              thickness: 2,
              width: 2,
            ),
          ),
          BacklessPlate(
            value: bmi,
            unit: "",
            label: "ИМТ",
          ),
        ],
      ),
    );
  }
}
