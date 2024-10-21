import 'package:gym_application/data/models/remote/auth/dto/check_verification_code_register_dto/check_verification_code_register_dto.dart';
import 'package:gym_application/data/models/remote/auth/dto/login_dto/login_dto.dart';
import 'package:gym_application/data/models/remote/auth/dto/register_dto/register_dto.dart';
import 'package:gym_application/data/models/remote/auth/response/check_verification_code_response/check_verification_code_response.dart';
import 'package:gym_application/data/provider/network/auth/auth_api.dart';

class AuthRepository {
  AuthRepository({required AuthApi authApi}) : _authApi = authApi;

  final AuthApi _authApi;

  Future<void> registerUser(RegisterDTO registeDTO) async {
    try {
      await _authApi.registerUser(registeDTO);
    } on Exception {
      rethrow;
    }
  }

  Future<CheckVerificationCodeResponse> checkVerificationCodeRegister(
    CheckVerificationCodeRegisterDTO checkVerificationCodeRegisterDTO,
  ) async {
    try {
      final checkVerificationCodeResponse =
          await _authApi.checkVerificationCodeRegister(checkVerificationCodeRegisterDTO);

      return checkVerificationCodeResponse.data;
    } on Exception {
      rethrow;
    }
  }

  Future<CheckVerificationCodeResponse> login(
    LoginDTO checkVerificationCodeRegisterDTO,
  ) async {
    try {
      final checkVerificationCodeResponse = await _authApi.login(checkVerificationCodeRegisterDTO);

      return checkVerificationCodeResponse.data;
    } on Exception {
      rethrow;
    }
  }
}
