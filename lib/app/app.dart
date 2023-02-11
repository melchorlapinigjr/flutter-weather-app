import 'package:flutter_weather_app/core/services/api/api_services.dart';
import 'package:flutter_weather_app/core/services/api/api_services_impl.dart';
import 'package:flutter_weather_app/core/services/dialog/dialog_service.dart';
import 'package:flutter_weather_app/core/services/dialog/dialog_service_impl.dart';
import 'package:flutter_weather_app/core/services/navigation/navigation_service.dart';
import 'package:flutter_weather_app/core/services/navigation/navigation_service_impl.dart';
import 'package:flutter_weather_app/core/services/snack_bar/snack_bar_service.dart';
import 'package:flutter_weather_app/core/services/snack_bar/snack_bar_service_impl.dart';
import 'package:flutter_weather_app/ui/screens/home/home_view.dart';
import 'package:flutter_weather_app/ui/screens/welcome/welcome_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(routes: [
  // Declaration of all routes needed in our app. These routes are generated in main app when onGenerateRoute function is called.
  CustomRoute(
      page: HomeView, 
      name: 'HomeView',
      transitionsBuilder: TransitionsBuilders.fadeIn),
  CustomRoute(
      page: WelcomeView,
      initial: true,
      name: 'WelcomeView',
      transitionsBuilder: TransitionsBuilders.fadeIn),
], dependencies: [
  // Declaration of all services need in the app. This needs to be registered in locator. All classes are single instance.
  Singleton(classType: NavigationServiceImpl, asType: NavigationService),
  LazySingleton(classType: SnackBarServiceImpl, asType: SnackBarService),
  LazySingleton(classType: ApiServiceImpl, asType: ApiService),
  LazySingleton(classType: DialogServiceImpl, asType: DialogService),
])
class App {}
