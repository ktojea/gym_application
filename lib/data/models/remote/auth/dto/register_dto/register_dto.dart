import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_dto.g.dart';
part 'register_dto.freezed.dart';

@freezed
class RegisterDTO with _$RegisterDTO {
  const factory RegisterDTO({
    required String phoneNumber,
  }) = _RegisterDTO;

  factory RegisterDTO.fromJson(Map<String, dynamic> json) => _$RegisterDTOFromJson(json);
}
