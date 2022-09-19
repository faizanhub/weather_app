import 'package:flutter/foundation.dart';
import 'package:weather_app_techidaara/constants/configs.dart';
import 'package:weather_app_techidaara/core/models/weather_model.dart';
import 'package:weather_app_techidaara/core/services/network_service.dart';

class WeatherService {
  final _networkService = NetworkService();

  Future<WeatherModel> getWeatherByCity(String city) async {
    String getWeatherByCityUrl = '${AppConfigs.baseUrl}$city';

    try {
      var response =
          await _networkService.getGetApiResponse(getWeatherByCityUrl);
      var weatherModel = WeatherModel.fromJson(response);

      return weatherModel;
    } catch (e) {
      debugPrint('Error occurred while getting all categories $e');
      rethrow;
    }
  }

  Future<WeatherModel> getWeatherOfCurrentLocation(
      double lat, double lng) async {
    String getWeatherOfCurrentLocation = '${AppConfigs.baseUrl}$lat,$lng';

    try {
      var response =
          await _networkService.getGetApiResponse(getWeatherOfCurrentLocation);
      var weatherModel = WeatherModel.fromJson(response);

      return weatherModel;
    } catch (e) {
      debugPrint('Error occurred while getting all categories $e');
      rethrow;
    }
  }
}
