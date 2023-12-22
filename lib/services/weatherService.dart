import 'package:dio/dio.dart';

// models
import 'package:weather_app/models/weatherModel.dart';

class WeatherService {
  WeatherService(this.dio);

  final Dio dio;
  final String baseURL = 'http://api.weatherapi.com/v1';
  final String apiKey = 'dcd5e9d867da4200ab284818232711';

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get('$baseURL/forecast.json?key=$apiKey&q=$cityName&days=1');
      WeatherModel weatherModel = WeatherModel.fromJSON(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ?? 'Opps! There was an error, Try again.';
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception('Opps! There was an error, Try again.');
    }
  }
}
