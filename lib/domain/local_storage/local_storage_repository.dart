import 'package:gym_application/data/provider/local/token_lds/token_lds.dart';

class LocalStorageRepository {
  const LocalStorageRepository({
    required TokenLDS tokenLDS,
  }) : _tokenLDS = tokenLDS;

  final TokenLDS _tokenLDS;

  Future<void> saveTokenToLocalStorage(String token) async {
    try {
      await _tokenLDS.saveTokenToLocalStorage(token);
    } on Exception {
      rethrow;
    }
  }

  Future<String?> getTokenFromLocalStorage() async {
    try {
      final token = await _tokenLDS.getTokenFromLocalStorage;

      return token;
    } on Exception {
      rethrow;
    }
  }

  Future<void> saveUserIdToLocalStorage(String userId) async {
    try {
      await _tokenLDS.saveUserIdToLocalStorage(userId);
    } on Exception {
      rethrow;
    }
  }

  Future<String?> getUserIdFromLocalStorage() async {
    try {
      final userId = await _tokenLDS.getUserIdFromLocalStorage;

      return userId;
    } on Exception {
      rethrow;
    }
  }

  Future<void> removeInfoAboutUser() async {
    try {
      await _tokenLDS.removeInfoAboutUser();
    } on Exception {
      rethrow;
    }
  }
}
