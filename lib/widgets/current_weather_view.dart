import 'package:flutter/material.dart';
import 'package:weather_app/app/settings/appication_colors.dart';
import 'package:weather_app/utils/size_config.dart';
import 'package:weather_app/widgets/current_extra_data.dart';
import 'package:weather_app/widgets/current_main_data.dart';

import '../data/entities/current_weather.dart';

// ignore: must_be_immutable
class CurrentWeatherView extends StatelessWidget {
  CurrentWeather currentWeather;
  CurrentWeatherView(this.currentWeather, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: ApplicationColors().shadow ?? Colors.blueAccent,
            )
          ],
          color: ApplicationColors().blueInfoBackground,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(getProportionateScreenWidth(50)),
              bottomRight: Radius.circular(getProportionateScreenWidth(50)))),
      child: Column(
        children: [
          CurrentMainData(currentWeather),
          const Divider(
            color: Colors.white,
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          CurrentExtraData(currentWeather),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
        ],
      ),
    );
  }
}
