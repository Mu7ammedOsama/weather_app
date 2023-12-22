import 'package:dio/dio.dart';

// dependencies
import 'package:flutter_bloc/flutter_bloc.dart';

// weather state
import 'package:weather_app/providers/getWeatherStates.dart';

// models
import 'package:weather_app/models/weatherModel.dart';

// services
import 'package:weather_app/services/weatherService.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeatherInitialState());

  getWeather({required String cityName}) async {
    try {
      WeatherModel weatherModel = await WeatherService(Dio()).getCurrentWeather(cityName: cityName);
      emit(WeatherLoadedState(weatherModel));
    } catch (e) {
      emit(WeatherFailureState(e.toString()));
    }
  }
}
