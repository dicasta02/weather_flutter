import 'package:weather_app/app/settings/app_settings.dart';

class Application {
  static Application? _singleton;

  AppSettings? appSettings;
  String? key;
  String? environment;

  factory Application() {
    _singleton ??= Application._();
    return _singleton!;
  }

  Application._();
}
