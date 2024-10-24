import 'package:shared_preferences/shared_preferences.dart';

class TokenLDS {
  Future<void> saveTokenToLocalStorage(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }

  Future<String?> get getTokenFromLocalStorage async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    return token;
  }

  Future<void> saveUserIdToLocalStorage(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('user_id', token);
  }

  Future<String?> get getUserIdFromLocalStorage async {
    final prefs = await SharedPreferences.getInstance();
    final userId = prefs.getString('user_id');

    return userId;
  }

  Future<void> removeInfoAboutUser() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
