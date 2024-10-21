import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_verification_code_response.g.dart';
part 'check_verification_code_response.freezed.dart';

@freezed
class CheckVerificationCodeResponse with _$CheckVerificationCodeResponse {
  const factory CheckVerificationCodeResponse({
    required String accessToken,
    required String tokenType,
    required String userId,
  }) = _CheckVerificationCodeResponse;

  factory CheckVerificationCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckVerificationCodeResponseFromJson(json);
}
