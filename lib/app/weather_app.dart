import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:weather_app/app/settings/appication_colors.dart';
import 'package:weather_app/app/settings/generated/l10n.dart';
import 'package:weather_app/view/weather_page.dart';

class WeatherApp extends StatelessWidget {
  WeatherApp({Key? key}) : super(key: key) {
    ApplicationColors().primarySwatch = _primarySwatch;
    ApplicationColors().secondaryButtonColor = const Color(0xFF506296);
    ApplicationColors().defaultTextColor = const Color(0xFF757575);
    ApplicationColors().grayIconsColor = const Color(0xFFC6C6C6);
    ApplicationColors().secondaryTextColor = const Color(0xFF506296);
    ApplicationColors().orangeIconColor = const Color(0xFFF16522);
    ApplicationColors().yellowIconColor = const Color(0xFFF19A00);
    ApplicationColors().greenActiveColor = const Color(0xFF69CB72);
    ApplicationColors().experienceDetailTextColor = const Color(0xFF1B1B1B);
    ApplicationColors().disabledButtonColor = const Color(0xFFDDDDDD);
    ApplicationColors().neutralGrayColor = const Color(0xFFA8A8A8);
    ApplicationColors().neutralBlackColor = const Color(0xFF4B4B4B);
    ApplicationColors().blueInfoBackground = Colors.blue[500];
    ApplicationColors().shadow = Colors.blue[200];
  }

  static const MaterialColor _primarySwatch = MaterialColor(
    _primarySwatchValue,
    <int, Color>{
      50: Color(0xFFFBE6EE),
      100: Color(0xFFF4C0D5),
      200: Color(0xFFED96BA),
      300: Color(0xFFE56B9E),
      400: Color(0xFFE04C89),
      500: Color(_primarySwatchValue),
      600: Color(0xFFD6276C),
      700: Color(0xFFD02161),
      800: Color(0xFFCB1B57),
      900: Color(0xFFC21044),
    },
  );
  static const int _primarySwatchValue = 0xFF2196F3;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: "Weather App",
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      supportedLocales: S.delegate.supportedLocales,
      home: WeatherPage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
          cupertinoOverrideTheme: const CupertinoThemeData(
            primaryColor: _primarySwatch,
            brightness: Brightness.light,
          ),
          brightness: Brightness.light,
          fontFamily: 'Open Sans',
          primarySwatch: _primarySwatch,
          primaryColor: const Color(0xFF2196F3),
          appBarTheme: const AppBarTheme(color: Color(0xFF757575)),
          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: _primarySwatch,
          )),
    );
  }
}
