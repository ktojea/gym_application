import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_verification_code_register_dto.g.dart';
part 'check_verification_code_register_dto.freezed.dart';

@freezed
class CheckVerificationCodeRegisterDTO with _$CheckVerificationCodeRegisterDTO {
  const factory CheckVerificationCodeRegisterDTO({
    required String phoneNumber,
    required String password,
    required String verificationCode,
    required String name,
    required String surname,
  }) = _CheckVerificationCodeRegisterDTO;

  factory CheckVerificationCodeRegisterDTO.fromJson(Map<String, dynamic> json) =>
      _$CheckVerificationCodeRegisterDTOFromJson(json);
}
