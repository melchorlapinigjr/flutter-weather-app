import 'package:flutter/material.dart';
import 'package:flutter_weather_app/app/app_base_view_model.dart';
import 'package:flutter_weather_app/core/models/city_weather_object.dart';

class HomeViewModel extends AppBaseViewModel {
  // Global key for form validation
  final _searchCityFormKey = GlobalKey<FormState>();

  get searchCityFormKey => _searchCityFormKey;

  String cityQuery = '';

  void onDisplayWeatherPressed() async {
    try {
      // Let's make sure we have value in our query
      if (!isInputCityValid()) return;
      // Let's update UI process is ongoing
      setBusy(true);
      // Fetch weather from API
      final CityWeatherObject? weatherObject =
          await apiService.getWeatherByCity(cityQuery);

      setBusy(false);
    } catch (e) {
      snackBarService.showSnackBar(e.toString());
      setBusy(false);
    }
  }

  void onCityInputChanged(value) {
    cityQuery = value;
  }

  bool isInputCityValid() {
    return _searchCityFormKey.currentState!.validate();
  }

  String? onValidateInputCity(String? value) {
    if (value == null || value.isEmpty) return 'Please input city name.';
    return null;
  }
}
