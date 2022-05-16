import 'package:equatable/equatable.dart';
import 'package:weather_app/data/models/city.dart';

class CitiesParams extends Equatable {
  final City name;

  CitiesParams({required this.name});

  @override
  List<Object?> get props => [name];
}
