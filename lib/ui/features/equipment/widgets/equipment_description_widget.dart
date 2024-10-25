import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/equipment/equipment.dart';
import 'package:gym_application/ui/features/equipment/widgets/equipment_widget.dart';

class EquipmentDescriptionWidget extends StatelessWidget {
  const EquipmentDescriptionWidget({
    super.key,
    required this.equipmentListenable,
  });

  final ValueNotifier<EntityState<Equipment>> equipmentListenable;

  @override
  Widget build(BuildContext context) {
    return EntityStateNotifierBuilder(
      listenableEntityState: equipmentListenable,
      builder: (_, equipment) => equipment == null
          ? const SizedBox.shrink()
          : EquipmentWidget(equipment: equipment),
    );
  }
}
