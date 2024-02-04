import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserManager extends ChangeNotifier {
  String? _email;
  String? _password;

  Future<void> login(String email, String password) async {
    _email = email;
    _password = password;

    final prefs = await SharedPreferences.getInstance();
    prefs.setString('email', email);
    prefs.setString('password', password);

    notifyListeners();
  }

  Future<void> logout() async {
    _email = null;
    _password = null;

    final prefs = await SharedPreferences.getInstance();
    prefs.remove('email');
    prefs.remove('password');

    notifyListeners();
  }

  bool isUserLoggedIn() {
    return _email != null && _password != null;
  }
}
