import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/images/image_with_insurance.dart';
import 'package:gym_application/data/models/local/equipment/equipment.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';

class EquipmentDescriptionWidget extends StatelessWidget {
  const EquipmentDescriptionWidget({super.key, required this.equipment});

  final Equipment equipment;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColorDark,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox.square(
            dimension: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: ImageWithInsurance(
                imageUrl: equipment.imageUrl,
                assetPath: 'assets/images/not_found.png',
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Тренажер:',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.qr_code_scanner_rounded,
                        color: AppColors.mainColorDark,
                        size: 30,
                      ),
                    )
                  ],
                ),
                Text(
                  equipment.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
