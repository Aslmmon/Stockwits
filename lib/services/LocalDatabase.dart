import 'package:shared_preferences/shared_preferences.dart';

class LocalDatabase {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();


  void saveEmailAndPassword(String email, String password) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setString("email", email).then((bool success) {
      return success;
    });
    prefs.setString("password", password).then((bool success) {
      return success;
    });
  }

  Future<String> getEmail() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.get("email");
  }


  Future<String> getPassword() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.get("password");
  }
}
