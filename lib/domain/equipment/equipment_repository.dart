import 'package:gym_application/data/models/local/equipment/equipment.dart';
import 'package:gym_application/data/provider/network/equipment/equipment_api.dart';

class EquipmentRepository {
  EquipmentRepository({required EquipmentApi equipmentApi}) : _equipmentApi = equipmentApi;

  final EquipmentApi _equipmentApi;

  Future<Equipment> getEquipment(int exerciseId) async {
    try {
      final equipment = await _equipmentApi.getEquipment(exerciseId);

      return equipment;
    } on Exception {
      rethrow;
    }
  }
}
