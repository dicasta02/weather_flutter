import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/app/settings/generated/l10n.dart';
import 'package:weather_app/utils/size_config.dart';

import '../data/entities/current_weather.dart';

// ignore: must_be_immutable
class CurrentExtraData extends StatelessWidget {
  CurrentWeather currentWeather;
  CurrentExtraData(this.currentWeather, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            const Icon(
              CupertinoIcons.wind,
              color: Colors.white,
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Text(
              currentWeather.wind.toString() + " Km/h",
              style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w700,
                  fontSize: getProportionateScreenHeight(16)),
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Text(
              S.of(context).allwind,
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontSize: getProportionateScreenHeight(16),
              ),
            )
          ],
        ),
        Column(
          children: [
            const Icon(
              CupertinoIcons.drop,
              color: Colors.white,
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Text(
              currentWeather.humidity.toString() + " %",
              style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w700,
                  fontSize: getProportionateScreenHeight(16)),
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Text(
              S.of(context).allhumidity,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: getProportionateScreenHeight(16)),
            )
          ],
        ),
        Column(
          children: [
            const Icon(
              CupertinoIcons.cloud_rain,
              color: Colors.white,
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Text(
              currentWeather.chanceRain.toString() + " %",
              style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w700,
                  fontSize: getProportionateScreenHeight(16)),
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Text(
              S.of(context).allrain,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: getProportionateScreenHeight(16)),
            )
          ],
        )
      ],
    );
  }
}
