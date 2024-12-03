// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'muscle_group_id_list_dto.freezed.dart';
part 'muscle_group_id_list_dto.g.dart';

@freezed
class MuscleGroupIdListDTO with _$MuscleGroupIdListDTO {
  const MuscleGroupIdListDTO._();
  const factory MuscleGroupIdListDTO({
    required List<int> ids,
  }) = _MuscleGroupIdListDTO;

  factory MuscleGroupIdListDTO.fromJson(Map<String, dynamic> json) => _$MuscleGroupIdListDTOFromJson(json);
}
