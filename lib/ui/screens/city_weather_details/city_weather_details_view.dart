import 'package:flutter/material.dart';
import 'package:flutter_weather_app/core/models/city_weather_object.dart';
import 'package:flutter_weather_app/ui/screens/city_weather_details/components/wind_details_view.dart';
import 'package:flutter_weather_app/ui/widgets/widgets.dart';
import 'package:stacked/stacked.dart';

import 'city_weather_details_view_model.dart';
import 'components/main_weather_view.dart';

class CityWeatherDetailsView extends StatelessWidget {
  final CityWeatherObject cityWeatherObject;

  const CityWeatherDetailsView({Key? key, required this.cityWeatherObject})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CityWeatherDetailsViewModel>.nonReactive(
        viewModelBuilder: () => CityWeatherDetailsViewModel(),
        builder: (context, model, widget) {
          return Scaffold(
            appBar: MyAppBar(
              title: 'Weather Details',
              onLogoutPressed: model.onLogoutPressed,
              showLogout: true,
            ),
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  labeledText(
                    'City:',
                    MyHeadlineSmall(text: cityWeatherObject.name ?? 'Unnamed'),
                  ),
                  const MyBodyMediumText(
                    text:
                        'Today\'s weather forecast.',
                    isBold: true,
                  ),
                  sizedBoxHeight4(),
                  labeledText(
                      'Main:',
                      MyBodyMediumText(
                          text: cityWeatherObject.weather?.first.main ?? ''),
                      true),
                  labeledText(
                      'Description:',
                      MyBodyMediumText(
                          text: cityWeatherObject.weather?.first.description ??
                              'No description'),
                      true),
                  labeledText(
                      'Lat-Long:',
                      MyBodyMediumText(
                          text: cityWeatherObject.coordinates != null
                              ? '${cityWeatherObject.coordinates!.lat}-${cityWeatherObject.coordinates!.lon}'
                              : 'No coordinates'),
                      true),
                  sizedBoxHeight8(),
                  MainWeatherView(
                    weatherInfo: cityWeatherObject.mainWeatherInfo!,
                  ),
                  sizedBoxHeight16(),
                  WindDetailsView(
                    wind: cityWeatherObject.wind!,
                  ),
                  sizedBoxHeight16(),
                  MyButton(
                      onPressed: model.onBackButtonPressed,
                      label: 'Back',
                      isLoading: model.isBusy),
                ],
              ),
            ),
          );
        });
  }

  Widget labeledText(String label, Widget child, [smallLabel = false]) {
    return Column(
      children: [
        Row(
          children: [
            smallLabel
                ? MyBodyMediumText(text: label)
                : MyHeadlineSmall(text: label),
            child
          ],
        ),
        sizedBoxHeight4(),
      ],
    );
  }
}
