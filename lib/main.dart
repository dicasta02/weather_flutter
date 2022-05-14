import 'package:flutter/material.dart';
import 'package:weather_app/app/settings/app_settings.dart';
import 'package:weather_app/app/settings/application.dart';
import 'package:weather_app/app/weather_app.dart';

void main() {
  var appSetings =
      AppSettings(baseURL: 'https://api.openweathermap.org/data/2.5/');
  Application().appSettings = appSetings;
  Application().environment = '';

  runApp(WeatherApp());
}
