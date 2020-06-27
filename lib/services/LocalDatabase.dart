import 'package:shared_preferences/shared_preferences.dart';

class LocalDatabase {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();


  void saveEmailAndPassword(String email, String password) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setString("email", email);
    prefs.setString("password", password);
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
