import 'package:shared_preferences/shared_preferences.dart';

// TODO: MAYBE WON'T RUN BECAUSE OF THIS
class SimplePreferences {
  static late SharedPreferences _preferences;

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setEmail({required String email}) async {
    await _preferences.setString('email', email);
  }

  static Future setPassword({required String password}) async {
    await _preferences.setString('password', password);
  }

  static String? getEmail() => _preferences.getString('email');

  static String? getPassword() => _preferences.getString('password');

  static Future<bool> deleteEmail() => _preferences.remove('email');

  static Future<bool> deletePassword() => _preferences.remove('password');
}
