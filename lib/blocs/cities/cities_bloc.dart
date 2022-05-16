import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app/data/entities/weather.dart';
import 'package:weather_app/data/models/city.dart';
import 'package:weather_app/usescase/cities_params.dart';
import 'package:weather_app/utils/get_city_parameter.dart';

part 'cities_event.dart';
part 'cities_state.dart';

class CitiesBloc extends Bloc<CitiesEvent, CitiesState> {
  final City name;
  final GetParameter getCity;
  CitiesState get initialState => Empty();

  CitiesBloc({
    required this.name,
    required this.getCity,
  }) : super(Empty()) {
    on<CitiesEvent>((event, emit) {});
    on<GetCitiesForLatLong>((event, emit) async {
      final cityEither = await getCity.getString(name);

      await cityEither((failure) {
        emit(Error(message: "No City"));
      }, (name) async {
        emit(Loading());
        final failureOrWeather = await name(CitiesParams(name: name));
        failureOrWeather.fold((failure) {
          emit(Error(message: "Server Error"));
        }, (weather) {
          emit(Loaded(weather: weather));
        });
      });
    });
  }
}
