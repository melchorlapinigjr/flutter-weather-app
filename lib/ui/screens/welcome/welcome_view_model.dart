import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter_weather_app/app/app.router.dart';
import 'package:flutter_weather_app/app/app_base_view_model.dart';

class WelcomeViewModel extends AppBaseViewModel {
  void onLoginPressed() async {
    try {
      // Let's notify UI process is going
      setBusy(true);
      // Try to login
      final Credentials? credentials = await apiService.login();
      if (credentials != null) {
        snackBarService.showSnackBar(
            'Login successful! Welcome ${credentials.user.name ?? credentials.user.nickname}!');
        navigationService.pushNamed(Routes.HomeView,
            arguments: HomeViewArguments(userProfile: credentials.user));
      } else {
        snackBarService.showSnackBar('Unable to login. Please try again.');
      }
      // Process successful
      setBusy(false);
    } catch (e) {
      if (e is String) {
        snackBarService.showSnackBar(e);
      } else {
        snackBarService.showSnackBar('Something went wrong.');
      }
    }
  }
}
