import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  factory SharedPrefHelper() => _instance;

  SharedPrefHelper._internal();
  static final SharedPrefHelper _instance = SharedPrefHelper._internal();

  static late SharedPreferences _preferences;

  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  SharedPreferences get instance => _preferences;

  Future<void> setString(String key, String value) =>
      _preferences.setString(key, value);
  String? getString(String key) => _preferences.getString(key);

  Future<void> setBool(String key, bool value) =>
      _preferences.setBool(key, value);
  bool? getBool(String key) => _preferences.getBool(key);

  Future<void> setDouble(String key, double value) =>
      _preferences.setDouble(key, value);
  double? getDouble(String key) => _preferences.getDouble(key);

  Future<void> setInt(String key, int value) => _preferences.setInt(key, value);
  int? getInt(String key) => _preferences.getInt(key);

  Future<void> remove(String key) => _preferences.remove(key);
  bool contains(String key) => _preferences.containsKey(key);
  Future<void> clear() => _preferences.clear();
}
