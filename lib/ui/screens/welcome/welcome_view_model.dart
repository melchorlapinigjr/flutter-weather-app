import 'package:flutter_weather_app/app/app.router.dart';
import 'package:flutter_weather_app/app/app_base_view_model.dart';

class WelcomeViewModel extends AppBaseViewModel {
  void onLoginPressed() {
    navigationService.pushNamed(Routes.WelcomeScreen);
  }
}
