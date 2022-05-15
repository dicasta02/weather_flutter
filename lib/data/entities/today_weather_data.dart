import 'package:equatable/equatable.dart';
import 'package:weather_app/data/entities/today_weather.dart';

class TodayWeatherData extends Equatable {
  final List<TodayWeather> todayWeatherData;

  TodayWeatherData({required this.todayWeatherData});
  @override
  List<Object?> get props => [todayWeatherData];
}
