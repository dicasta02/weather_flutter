import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/app/settings/appication_colors.dart';
import 'package:weather_app/app/settings/generated/l10n.dart';
import 'package:weather_app/blocs/cities/cities_bloc.dart';
import 'package:weather_app/injection_container.dart';
import 'package:weather_app/utils/get_city_parameter.dart';
import 'package:weather_app/utils/size_config.dart';
import 'package:weather_app/widgets/current_weather_view.dart';
import 'package:weather_app/widgets/empty_or_loading.dart';

// ignore: must_be_immutable
class CitiesPage extends StatelessWidget {
  final String? city;
  CitiesPage({Key? key, this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GetParameter.name = city;
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: ApplicationColors().neutralGrayColor,
      body: buildBody(context),
    );
  }

  BlocProvider<CitiesBloc> buildBody(BuildContext context) {
    return BlocProvider(
      create: (_) => sl(),
      child: BlocBuilder<CitiesBloc, CitiesState>(
        builder: (context, state) {
          if (state is Empty) {
            context.read<CitiesBloc>().add(GetCitiesForLatLong(city));
            return const EmptyOrLoading();
          } else if (state is Loading) {
            return const EmptyOrLoading();
          } else if (state is Loaded) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  CurrentWeatherView(
                      state.weather.currentWeatherData.currentWeatherData),
                ],
              ),
            );
          } else {
            return Center(
              child: Text(
                S.of(context).allGenericError,
                style: TextStyle(color: Colors.black),
              ),
            );
          }
        },
      ),
    );
  }
}
