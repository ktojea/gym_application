import 'package:dio/dio.dart';
import 'package:gym_application/data/models/local/equipment/equipment.dart';
import 'package:gym_application/data/models/local/exercise/exercise.dart';
import 'package:gym_application/data/models/local/exercise_in_list/exercise_in_list.dart';
import 'package:gym_application/data/models/local/muscle_group_level_lists/muscle_group_level_lists.dart';
import 'package:retrofit/retrofit.dart';

part 'equipment_api.g.dart';

@RestApi()
abstract class EquipmentApi {
  factory EquipmentApi(Dio dio, {String baseUrl}) = _EquipmentApi;

  @GET('/equipment/{id}')
  Future<Equipment> getEquipment(@Path('id') int equipmentId);
}
