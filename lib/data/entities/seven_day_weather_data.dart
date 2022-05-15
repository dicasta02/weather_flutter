import 'package:equatable/equatable.dart';
import 'package:weather_app/data/entities/seven_day_weather.dart';

class SevenDayWeatherData extends Equatable {
  final List<SevenDayWeather> sevenDayWeatherdata;

  const SevenDayWeatherData({required this.sevenDayWeatherdata});

  @override
  List<Object?> get props => [sevenDayWeatherdata];
}
