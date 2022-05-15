import 'package:flutter/material.dart';
import 'package:weather_app/data/entities/today_weather.dart';
import 'package:weather_app/utils/size_config.dart';

// ignore: must_be_immutable
class TodayExtraData extends StatelessWidget {
  TodayWeather todayWeather;
  TodayExtraData(this.todayWeather, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(15)),
      decoration: BoxDecoration(
          border: Border.all(width: 0.2, color: Colors.black),
          borderRadius:
              BorderRadius.circular(getProportionateScreenHeight(35))),
      child: Column(
        children: [
          Text(
            todayWeather.current.toString() + "\u00B0",
            style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.none,
                fontSize: getProportionateScreenWidth(20)),
          ),
          SizedBox(
            height: getProportionateScreenHeight(5),
          ),
          Image(
            image: AssetImage(todayWeather.image),
            width: getProportionateScreenWidth(40),
            height: getProportionateScreenHeight(40),
          ),
          SizedBox(
            height: getProportionateScreenHeight(5),
          ),
          Text(
            todayWeather.time,
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: getProportionateScreenHeight(16),
                color: Colors.black),
          )
        ],
      ),
    );
  }
}
