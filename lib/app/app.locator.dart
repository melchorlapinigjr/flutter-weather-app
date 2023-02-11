// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, implementation_imports, depend_on_referenced_packages

import 'package:stacked_core/stacked_core.dart';

import '../core/services/api/api_services.dart';
import '../core/services/api/api_services_impl.dart';
import '../core/services/dialog/dialog_service.dart';
import '../core/services/dialog/dialog_service_impl.dart';
import '../core/services/navigation/navigation_service.dart';
import '../core/services/navigation/navigation_service_impl.dart';
import '../core/services/snack_bar/snack_bar_service.dart';
import '../core/services/snack_bar/snack_bar_service_impl.dart';

final locator = StackedLocator.instance;

Future<void> setupLocator(
    {String? environment, EnvironmentFilter? environmentFilter}) async {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerSingleton<NavigationService>(NavigationServiceImpl());
  locator.registerLazySingleton<SnackBarService>(() => SnackBarServiceImpl());
  locator.registerLazySingleton<ApiService>(() => ApiServiceImpl());
  locator.registerLazySingleton<DialogService>(() => DialogServiceImpl());
}
