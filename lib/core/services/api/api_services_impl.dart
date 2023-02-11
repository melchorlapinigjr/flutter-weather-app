import 'package:dio/dio.dart';
import 'package:flutter_weather_app/ui/utils/constants.dart';

import 'api_services.dart';

class ApiServiceImpl extends ApiService {
  static BaseOptions baseOptions = BaseOptions(
    baseUrl: Constants.baseUrl,
    contentType: Constants.contentType,
    connectTimeout: 30000,
    receiveTimeout: 30000,
  );
  final Dio dio = Dio(baseOptions);

}
