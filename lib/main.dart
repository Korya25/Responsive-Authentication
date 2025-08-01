import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_authentication/core/di/service_locator.dart';
import 'package:responsive_authentication/urban_nest.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const UrbanNest());
}
