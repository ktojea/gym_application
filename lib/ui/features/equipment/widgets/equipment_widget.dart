import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/equipment/equipment.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/plate_widget.dart';

class EquipmentWidget extends StatelessWidget {
  const EquipmentWidget({
    super.key,
    required this.equipment,
  });

  final Equipment equipment;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //TODO Переход на экран сканнера
      onTap: () {},
      child: PlateWidget(
        blurRadius: 35,
        color: AppColors.mainColorDark,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusDirectional.circular(15),
              child: SizedBox.square(
                dimension: 70,
                child: ColoredBox(
                  color: AppColors.mainColor,
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(equipment.imageUrl),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15),
            Column(
              mainAxisSize: MainAxisSize.min, //
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Тренажер:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.1,
                  child: Text(
                    equipment.name,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    maxLines: 3,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.qr_code_scanner_rounded,
              color: Colors.white,
              size: 35,
            ),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
