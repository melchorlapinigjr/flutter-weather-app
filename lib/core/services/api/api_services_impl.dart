import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:dio/dio.dart';
import 'package:flutter_weather_app/ui/utils/constants.dart';

import 'api_services.dart';

class ApiServiceImpl extends ApiService {

  // auth0 client ID
  final String _auth0ClientId = 'lXeEJYaiOHkHbZDanih4LWuhXbmMy7CW';

  static BaseOptions baseOptions = BaseOptions(
    baseUrl: Constants.baseUrl,
    contentType: Constants.contentType,
    connectTimeout: 30000,
    receiveTimeout: 30000,
  );
  final Dio dio = Dio(baseOptions);

  @override
  Future<Credentials?> login() async {
    try {
      final auth0 = Auth0(Constants.auth0Domain, _auth0ClientId);
      final credentials = await auth0.webAuthentication(scheme: 'demo').login();
      return credentials;
    } catch (e) {
      // Catch unexpected exceptions
      if (e is WebAuthenticationException) {
        throw e.message;
      }
      throw Future.error(e);
    }
  }
}
