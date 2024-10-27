import 'package:dio/dio.dart';
import 'package:gym_application/data/models/local/equipment/equipment.dart';

import 'package:retrofit/retrofit.dart';

part 'equipment_api.g.dart';

@RestApi()
abstract class EquipmentApi {
  factory EquipmentApi(Dio dio, {String baseUrl}) = _EquipmentApi;

  @GET('/equipment/{id}')
  Future<Equipment> getEquipment(@Path('id') int equipmentId);
}
