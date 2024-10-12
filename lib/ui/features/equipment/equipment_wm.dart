import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/equipment/equipment_model.dart';
import 'package:gym_application/ui/features/equipment/equipment_screen.dart';

abstract interface class IEquipmentScreenWidgetModel implements IWidgetModel {}

EquipmentScreenWidgetModel defaultEquipmentScreenWidgetModelFactory(BuildContext context) {
  return EquipmentScreenWidgetModel(
    EquipmentScreenModel(),
  );
}

class EquipmentScreenWidgetModel extends WidgetModel<EquipmentScreen, IEquipmentScreenModel>
    implements IEquipmentScreenWidgetModel {
  EquipmentScreenWidgetModel(super.model);
}
