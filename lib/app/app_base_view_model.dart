import 'package:flutter_weather_app/app/app.router.dart';
import 'package:flutter_weather_app/core/services/api/api_services.dart';
import 'package:flutter_weather_app/core/services/dialog/dialog_service.dart';
import 'package:flutter_weather_app/core/services/navigation/navigation_service.dart';
import 'package:flutter_weather_app/core/services/snack_bar/snack_bar_service.dart';
import 'package:stacked/stacked.dart';

import 'app.locator.dart';

// Class holding our declaration of all the services instances.
class AppBaseViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final snackBarService = locator<SnackBarService>();
  final apiService = locator<ApiService>();
  final dialogService = locator<DialogService>();

  bool isLoggingOut = false;

  void onLogoutPressed() async {
    try {
      isLoggingOut = true;
      notifyListeners();
      await apiService.logout();
      isLoggingOut = false;
      notifyListeners();
      navigationService.pushNamedAndRemoveUntil(Routes.WelcomeView,
          predicate: (value) => false);
    } catch (e) {
      snackBarService.showSnackBar(e.toString());
    }
  }
}
