part of 'cities_bloc.dart';

abstract class CitiesEvent extends Equatable {
  const CitiesEvent([List properties = const <dynamic>[]]);
  @override
  List<Object> get props => [];
}

class GetCitiesForLatLong extends CitiesEvent {
  final String? city;

  const GetCitiesForLatLong(this.city);
}
