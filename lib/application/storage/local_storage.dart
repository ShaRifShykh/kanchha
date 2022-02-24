import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static Future<bool> setItem(String key, String value) async {
    final SharedPreferences _sharedPreferences =
        await SharedPreferences.getInstance();
    return _sharedPreferences.setString(key, value);
  }

  static Future<String?> getItem(String key) async {
    final _sharedPreferences = await SharedPreferences.getInstance();
    return _sharedPreferences.getString(key);
  }

  static clearAll() async {
    final _sharedPreferences = await SharedPreferences.getInstance();
    await _sharedPreferences.clear();
  }
}
