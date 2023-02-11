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
  Singleton(classType: NavigationServiceImpl, asType: NavigationService),
  LazySingleton(classType: SnackBarServiceImpl, asType: SnackBarService),
  LazySingleton(classType: ApiServiceImpl, asType: ApiService),
  LazySingleton(classType: DialogServiceImpl, asType: DialogService),
])
class App {}
