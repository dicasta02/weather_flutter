import 'package:equatable/equatable.dart';
import 'package:weather_app/data/entities/current_weather_data.dart';
import 'package:weather_app/data/entities/seven_day_weather_data.dart';
import 'package:weather_app/data/entities/today_weather_data.dart';

class Weather extends Equatable {
  final CurrentWeatherData currentWeatherData;
  final SevenDayWeatherData sevenDayWeatherData;
  final TodayWeatherData todayWeatherData;

  Weather(
      {required this.currentWeatherData,
      required this.sevenDayWeatherData,
      required this.todayWeatherData});

  @override
  List<Object?> get props => [
        currentWeatherData,
        sevenDayWeatherData,
        todayWeatherData,
      ];
}
