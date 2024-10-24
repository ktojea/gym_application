import 'package:elementary/elementary.dart';
import 'package:gym_application/data/models/remote/auth/dto/login_dto/login_dto.dart';
import 'package:gym_application/data/models/remote/auth/response/check_verification_code_response/check_verification_code_response.dart';
import 'package:gym_application/domain/auth/auth_repository.dart';
import 'package:gym_application/domain/local_storage/local_storage_repository.dart';

abstract interface class ILoginScreenModel extends ElementaryModel {
  Future<CheckVerificationCodeResponse> loginUser(LoginDTO loginDTO);

  Future<void> saveToken(String token);

  Future<void> saveUserId(String userId);
}

class LoginScreenModel extends ILoginScreenModel {
  LoginScreenModel({
    required LocalStorageRepository localStorageRepository,
    required AuthRepository authRepository,
  })  : _localStorageRepository = localStorageRepository,
        _authRepository = authRepository;

  final LocalStorageRepository _localStorageRepository;
  final AuthRepository _authRepository;

  @override
  Future<CheckVerificationCodeResponse> loginUser(LoginDTO loginDTO) async {
    try {
      final checkVerificationCodeResponse = await _authRepository.login(loginDTO);

      return checkVerificationCodeResponse;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<void> saveToken(String token) async {
    try {
      await _localStorageRepository.saveTokenToLocalStorage(token);
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<void> saveUserId(String userId) async {
    try {
      await _localStorageRepository.saveUserIdToLocalStorage(userId);
    } on Exception {
      rethrow;
    }
  }
}
