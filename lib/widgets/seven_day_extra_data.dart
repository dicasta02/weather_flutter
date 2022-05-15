import 'package:flutter/material.dart';
import 'package:weather_app/utils/size_config.dart';

import '../data/entities/seven_day_weather.dart';

// ignore: must_be_immutable
class SevenDayExtraData extends StatelessWidget {
  SevenDayWeather sevenDayWeather;
  SevenDayExtraData(this.sevenDayWeather, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: getProportionateScreenWidth(10),
          left: getProportionateScreenWidth(10),
          right: getProportionateScreenWidth(10)),
      decoration: BoxDecoration(
          border: Border.all(width: 0.2, color: Colors.black),
          borderRadius:
              BorderRadius.circular(getProportionateScreenHeight(35))),
      padding: EdgeInsets.all(getProportionateScreenHeight(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(sevenDayWeather.day,
              style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontSize: getProportionateScreenHeight(20))),
          Container(
            width: getProportionateScreenWidth(125),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(sevenDayWeather.image),
                  width: getProportionateScreenWidth(40),
                ),
                SizedBox(width: getProportionateScreenWidth(15)),
                Text(
                  sevenDayWeather.name,
                  style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontSize: getProportionateScreenHeight(20)),
                )
              ],
            ),
          ),
          Row(
            children: [
              Text(
                "+" + sevenDayWeather.max.toString() + "\u00B0",
                style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontSize: getProportionateScreenHeight(20)),
              ),
              SizedBox(
                width: getProportionateScreenWidth(5),
              ),
              Text(
                "+" + sevenDayWeather.min.toString() + "\u00B0",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: getProportionateScreenHeight(20),
                    color: Colors.black),
              ),
            ],
          )
        ],
      ),
    );
  }
}
