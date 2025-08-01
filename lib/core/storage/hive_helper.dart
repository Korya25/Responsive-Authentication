import 'package:hive/hive.dart';

class HiveHelper {
  factory HiveHelper() => _instance;

  HiveHelper._internal();
  static final HiveHelper _instance = HiveHelper._internal();

  Future<void> init() async {}

  Future<void> write<T>(String boxName, String key, T value) async {
    final box = await Hive.openBox<T>(boxName);
    await box.put(key, value);
  }

  Future<T?> read<T>(String boxName, String key) async {
    final box = await Hive.openBox<T>(boxName);
    return box.get(key);
  }

  Future<void> delete<T>(String boxName, String key) async {
    final box = await Hive.openBox<T>(boxName);
    await box.delete(key);
  }

  Future<void> clearBox<T>(String boxName) async {
    final box = await Hive.openBox<T>(boxName);
    await box.clear();
  }
}
