import 'package:get_it/get_it.dart';
import 'package:responsive_authentication/core/storage/hive_helper.dart';
import 'package:responsive_authentication/core/storage/shared_pref_helper.dart';

final sl = GetIt.instance;

Future<void> setupServiceLocator() async {
  // Shared Preferences
  final sharedPrefHelper = SharedPrefHelper();
  await sharedPrefHelper.init();
  sl.registerSingleton<SharedPrefHelper>(sharedPrefHelper);

  // Hive Helper
  final hiveHelper = HiveHelper();
  await hiveHelper.init();
  sl.registerSingleton<HiveHelper>(hiveHelper);
}
