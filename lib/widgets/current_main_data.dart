import 'package:flutter/material.dart';
import 'package:weather_app/utils/size_config.dart';

import '../data/entities/current_weather.dart';

// ignore: must_be_immutable
class CurrentMainData extends StatelessWidget {
  CurrentWeather currentWeather;
  CurrentMainData(this.currentWeather, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int output = ((currentWeather.current) - 273.15).round();

    return Column(
      children: [
        SizedBox(
          height: getProportionateScreenHeight(30),
        ),
        Image(
          image: AssetImage(currentWeather.image),
          width: getProportionateScreenWidth(250),
          height: getProportionateScreenHeight(250),
          fit: BoxFit.fill,
        ),
        Center(
            child: Column(
          children: [
            text(120, output.toString() + '°'),
            text(25, currentWeather.name),
            text(18, currentWeather.day),
          ],
        )),
      ],
    );
  }

  Widget text(double height, String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        decoration: TextDecoration.none,
        fontSize: getProportionateScreenHeight(height),
      ),
    );
  }
}
