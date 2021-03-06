import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'map_event.dart';
part 'map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  MapState get initialState => Temperature();
  MapBloc() : super(Temperature()) {
    on<MapEvent>((event, emit) {});
    on<GetTempAndPrepForMap>((event, emit) {
      if (event.mapType == "temp_new") {
        emit(Temperature());
      } else {
        emit(Precipitation());
      }
    });
  }
}
