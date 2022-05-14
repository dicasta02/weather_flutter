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
  Color? greenBonusColor;
  Color? grayBonusColor;
  Color? pointsColor;
  Color? wellnessHourColor;
  Color? walletMoneyColor;
  Color? errorColor;
  Color? dividerColor;
  Color? backgroundPointsValueIcon;
  Color? backgroundMoneyValueIcon;
  Color? moneyColor;
  Color? yellowBackground;
  Color? whiteBackground;
  Color? blueInfoBackground;
  Color? errorBackground;
  Color? challengeBackGround;
  Color? greenWaveSelectedBackGround;
  Color? blueExperiencesTooltipBackground;
  late Color blueExperiencesTooltipBorder;
  Color? blueExperiencesTooltipIcon;
  Color? sleepTimeColor;
  Color? notificationItemBackGround;
  Color? clanHourColor;
  Color? expiredBonusColor;
  Color? certificatedExperienceColor;

  factory ApplicationColors() {
    _singleton = ApplicationColors._();
    return _singleton!;
  }

  ApplicationColors._();
}
