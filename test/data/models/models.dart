import 'package:weather_app/data/entities/current_weather.dart';
import 'package:weather_app/data/entities/current_weather_data.dart';
import 'package:weather_app/data/entities/seven_day_weather.dart';
import 'package:weather_app/data/entities/seven_day_weather_data.dart';
import 'package:weather_app/data/entities/today_weather.dart';
import 'package:weather_app/data/entities/today_weather_data.dart';
import 'package:weather_app/data/entities/weather.dart';
import 'package:weather_app/utils/lat_long.dart';

final tLatLng = LatLong(lat: 0, long: 0);

final tCurrentWeatherDara = CurrentWeatherData(
  currentWeatherData: CurrentWeather(
    chanceRain: 0,
    current: 0,
    day: '',
    humidity: 0,
    image: '',
    name: '',
    wind: 0,
  ),
);

final tTodayWeatherData = TodayWeatherData(todayWeatherData: [
  TodayWeather(
    current: 0,
    image: '',
    time: '',
  )
]);

final tSevenDayWeatherData = SevenDayWeatherData(sevenDayWeatherdata: [
  SevenDayWeather(
    max: 0,
    min: 0,
    name: "",
    day: "",
    image: "",
  )
]);

final tWeather = Weather(
    currentWeatherData: tCurrentWeatherDara,
    sevenDayWeatherData: tSevenDayWeatherData,
    todayWeatherData: tTodayWeatherData);
