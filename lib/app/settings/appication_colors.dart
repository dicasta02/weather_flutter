import 'package:flutter/material.dart';

class ApplicationColors {
  static ApplicationColors? _singleton;

  MaterialColor? primarySwatch;
  Color? secondaryButtonColor;
  Color? defaultTextColor;
  Color? grayIconsColor;
  Color? secondaryTextColor;
  Color? orangeIconColor;
  Color? yellowIconColor;
  Color? greenActiveColor;
  Color? experienceDetailTextColor;
  Color? disabledButtonColor;
  Color? neutralGrayColor;
  Color? neutralBlackColor;
  Color? blueInfoBackground;
  Color? shadow;

  factory ApplicationColors() {
    _singleton = ApplicationColors._();
    return _singleton!;
  }

  ApplicationColors._();
}
