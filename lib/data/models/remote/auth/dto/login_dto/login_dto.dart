import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_dto.g.dart';
part 'login_dto.freezed.dart';

@freezed
class LoginDTO with _$LoginDTO {
  const factory LoginDTO({
    required String phoneNumber,
    required String password,
  }) = _LoginDTO;

  factory LoginDTO.fromJson(Map<String, dynamic> json) => _$LoginDTOFromJson(json);
}
