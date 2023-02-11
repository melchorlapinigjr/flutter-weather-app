import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:dio/dio.dart';
import 'package:flutter_weather_app/core/models/city_weather_object.dart';
import 'package:flutter_weather_app/core/services/api/network/dio_exceptions.dart';
import 'package:flutter_weather_app/ui/utils/constants.dart';

import 'api_services.dart';

class ApiServiceImpl extends ApiService {
  // auth0 client ID
  final String _auth0ClientId = 'lXeEJYaiOHkHbZDanih4LWuhXbmMy7CW';

  static BaseOptions baseOptions = BaseOptions(
    baseUrl: Constants.baseUrl,
  );
  final Dio dio = Dio(baseOptions);

  @override
  Future<Credentials?> login() async {
    try {
      final auth0 = Auth0(Constants.auth0Domain, _auth0ClientId);
      final credentials = await auth0.webAuthentication(scheme: 'demo').login();
      return credentials;
    } catch (e) {
      // Let's catch future errors
      if (e is WebAuthenticationException) {
        throw e.message;
      }
      throw Future.error(e);
    }
  }

  @override
  Future<CityWeatherObject?> getWeatherByCity(String city) async {
    CityWeatherObject? cityWeatherObject;
    try {
      final response = await dio.get('/weather', queryParameters: {
        'q': city,
        'appid': '${Constants.openWeatherAPIKey}'
      });

      if (response.statusCode == 200) {
        cityWeatherObject = CityWeatherObject.fromJson(response.data);
      }
      return cityWeatherObject;
    } catch (e) {
      // Let's catch future errors
      throw DioExceptions.fromDioError(e as DioError);
    }
  }
}
