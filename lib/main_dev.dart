import 'package:flutter/material.dart';
import 'package:weather_app/app/settings/app_settings.dart';
import 'package:weather_app/app/settings/application.dart';
import 'package:weather_app/app/weather_app.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:weather_app/injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  var appSettings = AppSettings(
    baseURL: 'https://api.openweathermap.org/data/2.5/',
  );

  Application().appSettings = appSettings;
  Application().environment = '-dev';

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(WeatherApp());
  FlutterNativeSplash.remove();
}
