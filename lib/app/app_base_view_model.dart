import 'package:flutter/widgets.dart';
import 'package:flutter_weather_app/core/services/api/api_services.dart';
import 'package:flutter_weather_app/core/services/dialog/dialog_service.dart';
import 'package:flutter_weather_app/core/services/navigation/navigation_service.dart';
import 'package:flutter_weather_app/core/services/snack_bar/snack_bar_service.dart';
import 'package:stacked/stacked.dart';

import 'app.locator.dart';

class AppBaseViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final snackBarService = locator<SnackBarService>();
  final apiService = locator<ApiService>();
  final dialogService = locator<DialogService>();


  void hideKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
