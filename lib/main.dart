import 'package:flutter/material.dart';
import 'package:flutter_weather_app/app/app.locator.dart';
import 'package:flutter_weather_app/app/app.router.dart';
import 'package:get/get.dart';

import 'core/services/navigation/navigation_service.dart';

void main() {
 // Register environments and dependencies
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // create an instance for navigation service
  final navigationService = locator<NavigationService>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Weather App',
      defaultTransition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 800),
      navigatorKey: navigationService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      debugShowCheckedModeBanner: true,
    );
  }
}
