import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/equipment/equipment_wm.dart';

@RoutePage()
class EquipmentScreen extends ElementaryWidget<IEquipmentScreenWidgetModel> {
  const EquipmentScreen({super.key}) : super(defaultEquipmentScreenWidgetModelFactory);

  @override
  Widget build(IEquipmentScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Тренажер'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ColoredBox(
        color: Colors.green.shade100,
        child: const Center(),
      ),
    );
  }
}
