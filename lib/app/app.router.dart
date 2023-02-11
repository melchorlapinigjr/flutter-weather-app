// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auth0_flutter/auth0_flutter.dart' as _i7;
import 'package:flutter/cupertino.dart' as _i6;
import 'package:flutter/material.dart';
import 'package:flutter_weather_app/core/models/city_weather_object.dart'
    as _i8;
import 'package:flutter_weather_app/ui/screens/city_weather_details/city_weather_details_view.dart'
    as _i4;
import 'package:flutter_weather_app/ui/screens/home/home_view.dart' as _i2;
import 'package:flutter_weather_app/ui/screens/welcome/welcome_view.dart'
    as _i3;
import 'package:stacked/src/code_generation/router_annotation/transitions_builders.dart'
    as _i5;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i9;

class Routes {
  static const HomeView = '/home-view';

  static const WelcomeView = '/';

  static const CityWeatherDetailsView = '/city-weather-details-view';

  static const all = <String>{
    HomeView,
    WelcomeView,
    CityWeatherDetailsView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.HomeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.WelcomeView,
      page: _i3.WelcomeView,
    ),
    _i1.RouteDef(
      Routes.CityWeatherDetailsView,
      page: _i4.CityWeatherDetailsView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      final args = data.getArgs<HomeViewArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            _i2.HomeView(key: args.key, userProfile: args.userProfile),
        settings: data,
        transitionsBuilder: data.transition ?? _i5.TransitionsBuilders.fadeIn,
      );
    },
    _i3.WelcomeView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const _i3.WelcomeView(),
        settings: data,
        transitionsBuilder: data.transition ?? _i5.TransitionsBuilders.fadeIn,
      );
    },
    _i4.CityWeatherDetailsView: (data) {
      final args = data.getArgs<CityWeatherDetailsViewArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            _i4.CityWeatherDetailsView(
                key: args.key, cityWeatherObject: args.cityWeatherObject),
        settings: data,
        transitionsBuilder:
            data.transition ?? _i5.TransitionsBuilders.slideLeft,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class HomeViewArguments {
  const HomeViewArguments({
    this.key,
    required this.userProfile,
  });

  final _i6.Key? key;

  final _i7.UserProfile userProfile;
}

class CityWeatherDetailsViewArguments {
  const CityWeatherDetailsViewArguments({
    this.key,
    required this.cityWeatherObject,
  });

  final _i6.Key? key;

  final _i8.CityWeatherObject cityWeatherObject;
}

extension NavigatorStateExtension on _i9.NavigationService {
  Future<dynamic> navigateToHomeView({
    _i6.Key? key,
    required _i7.UserProfile userProfile,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.HomeView,
        arguments: HomeViewArguments(key: key, userProfile: userProfile),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToWelcomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.WelcomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCityWeatherDetailsView({
    _i6.Key? key,
    required _i8.CityWeatherObject cityWeatherObject,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.CityWeatherDetailsView,
        arguments: CityWeatherDetailsViewArguments(
            key: key, cityWeatherObject: cityWeatherObject),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView({
    _i6.Key? key,
    required _i7.UserProfile userProfile,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.HomeView,
        arguments: HomeViewArguments(key: key, userProfile: userProfile),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithWelcomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.WelcomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCityWeatherDetailsView({
    _i6.Key? key,
    required _i8.CityWeatherObject cityWeatherObject,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.CityWeatherDetailsView,
        arguments: CityWeatherDetailsViewArguments(
            key: key, cityWeatherObject: cityWeatherObject),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
