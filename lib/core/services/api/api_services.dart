import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter_weather_app/core/models/city_weather_object.dart';

abstract class ApiService {
  // Pre-defined methods for our app
  Future<Credentials?> login();

  Future<CityWeatherObject?> getWeatherByCity(String city);

  Future<void> logout();
}
