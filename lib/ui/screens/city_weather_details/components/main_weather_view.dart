import 'package:flutter/material.dart';
import 'package:flutter_weather_app/core/models/city_weather_object.dart';
import 'package:flutter_weather_app/ui/widgets/widgets.dart';

class MainWeatherView extends StatelessWidget {
  final MainWeatherInfo weatherInfo;

  const MainWeatherView({Key? key, required this.weatherInfo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
        border: TableBorder.all(color: Colors.grey, width: .9),
        children: [
          const TableRow(children: [
            Padding(
              padding: EdgeInsets.all(4.0),
              child: MyBodyMediumText(
                text: 'Description',
                isBold: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
              child: MyBodyMediumText(
                text: 'Value',
                isBold: true,
              ),
            ),
          ]),
          tableRow(label: 'Temperature', value: '${weatherInfo.temp ?? 0}'),
          tableRow(label: 'Feels Like', value: '${weatherInfo.feelsLike ?? 0}'),
          tableRow(label: 'Min Temp', value: '${weatherInfo.tempMax ?? 0}'),
          tableRow(label: 'Max Temp', value: '${weatherInfo.temp ?? 0}'),
          tableRow(label: 'Pressure', value: '${weatherInfo.pressure ?? 0}'),
          tableRow(label: 'Humidity', value: '${weatherInfo.humidity ?? 0}'),
          tableRow(label: 'Sea Level', value: '${weatherInfo.seaLevel ?? 0}'),
          tableRow(
              label: 'Ground Level', value: '${weatherInfo.grndLevel ?? 0}'),
        ]);
  }

  TableRow tableRow({required String label, required String value}) {
    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: MyBodyMediumText(
          text: label,
          color: Colors.black87,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: MyBodyMediumText(
          text: value,
          color: Colors.black87,
        ),
      ),
    ]);
  }
}
