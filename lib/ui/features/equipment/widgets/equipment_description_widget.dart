import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/equipment/widgets/text_with_image_widget.dart';

class EquipmentDescriptionWidget extends StatelessWidget {
  const EquipmentDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextWithImageWidget(
      label: 'Тренажер',
      name: 'Залупа',
      imageUrl: 'https://dskrnd.ru/upload/iblock/a75/a75b1aed91da82d290c5a33b7cdb462f.jpg',
    );
  }
}
