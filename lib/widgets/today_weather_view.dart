import 'package:flutter/material.dart';
import 'package:weather_app/app/settings/generated/l10n.dart';
import 'package:weather_app/data/entities/today_weather_data.dart';
import 'package:weather_app/utils/size_config.dart';
import 'package:weather_app/utils/today_extra_data.dart';

// ignore: must_be_immutable
class TodaysWeatherView extends StatelessWidget {
  TodayWeatherData todayWeatherData;
  TodaysWeatherView(this.todayWeatherData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            S.of(context).allToday,
            style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontSize: getProportionateScreenWidth(25),
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(15),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: getProportionateScreenWidth(10),
                  ),
                  TodayExtraData(todayWeatherData.todayWeatherData[0]),
                  SizedBox(
                    width: getProportionateScreenWidth(10),
                  ),
                  TodayExtraData(todayWeatherData.todayWeatherData[1]),
                  SizedBox(
                    width: getProportionateScreenWidth(10),
                  ),
                  TodayExtraData(todayWeatherData.todayWeatherData[2]),
                  SizedBox(
                    width: getProportionateScreenWidth(10),
                  ),
                  TodayExtraData(todayWeatherData.todayWeatherData[3])
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            S.of(context).allDays,
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: getProportionateScreenHeight(25),
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
      ],
    );
  }
}
