import 'package:elementary/elementary.dart';
import 'package:gym_application/domain/auth/auth_repository.dart';
import 'package:gym_application/domain/local_storage/local_storage_repository.dart';

abstract interface class ISplashScreenModel extends ElementaryModel {
  Future<void> validateUser(String token);

  Future<String?> getToken();
}

class SplashScreenModel extends ISplashScreenModel {
  SplashScreenModel({
    required AuthRepository authRepository,
    required LocalStorageRepository localStorageRepository,
  })  : _authRepository = authRepository,
        _localStorageRepository = localStorageRepository;

  final AuthRepository _authRepository;

  final LocalStorageRepository _localStorageRepository;

  @override
  Future<void> validateUser(String token) async {
    try {
      await _authRepository.validateUser(token);
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<String?> getToken() async {
    try {
      final token = await _localStorageRepository.getTokenFromLocalStorage();

      return token;
    } on Exception {
      return null;
    }
  }
}
