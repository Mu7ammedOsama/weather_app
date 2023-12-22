// models
import 'package:weather_app/models/weatherModel.dart';

class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  WeatherLoadedState(this.weatherModel);

  final WeatherModel weatherModel;
}

class WeatherFailureState extends WeatherState {
  WeatherFailureState(this.errorMessage);

  final String errorMessage;
}
