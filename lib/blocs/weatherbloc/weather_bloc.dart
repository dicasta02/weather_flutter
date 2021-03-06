import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app/data/entities/weather.dart';
import 'package:weather_app/usescase/get_weather.dart';
import 'package:weather_app/usescase/weather_params.dart';
import 'package:weather_app/utils/get_lat_long.dart';

part 'weather_event.dart';
part 'weather_state.dart';

const String LOCATION_FAILURE_MESSAGE = "Unable to get the Location";
const String SERVER_FAILURE_MESSAGE = "Unable to get data from database";

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final GetWeather getWeather;
  final GetLatLong getLatLong;
  WeatherState get initialState => Empty();

  WeatherBloc({
    required this.getLatLong,
    required this.getWeather,
  }) : super(Empty()) {
    on<WeatherEvent>((event, emit) {});
    on<GetWeatherForLatLong>((event, emit) async {
      final latLongEither = await getLatLong.getLatLong();

      await latLongEither.fold((failure) {
        emit(Error(message: LOCATION_FAILURE_MESSAGE));
      }, (latLong) async {
        emit(Loading());
        final failureOrWeather =
            await getWeather(WeatherParams(latLong: latLong));
        failureOrWeather.fold((failure) {
          emit(Error(message: SERVER_FAILURE_MESSAGE));
        }, (weather) {
          emit(Loaded(weather: weather));
        });
      });
    });
  }
}
