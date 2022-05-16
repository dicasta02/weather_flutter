part of 'cities_bloc.dart';

abstract class CitiesState extends Equatable {
  const CitiesState();

  @override
  List<Object> get props => [];
}

class Empty extends CitiesState {}

class Loading extends CitiesState {}

class Loaded extends CitiesState {
  final Weather weather;

  const Loaded({required this.weather});

  @override
  List<Object> get props => [weather];
}

class Error extends CitiesState {
  final String message;

  const Error({required this.message});

  @override
  List<Object> get props => [message];
}
