import 'package:flutter/material.dart';
import 'package:flutter_weather_app/app/app_base_view_model.dart';

class HomeViewModel extends AppBaseViewModel {
  final _searchCityFormKey = GlobalKey<FormState>();

  get searchCityFormKey => _searchCityFormKey;

  String cityQuery = '';

  void onLogoutPressed() {}

  void onDisplayWeatherPressed() {}

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
