import 'package:flutter_weather_app/app/app_base_view_model.dart';

class CityWeatherDetailsViewModel extends AppBaseViewModel {
  void onBackButtonPressed() {
    navigationService.pop();
  }
}
