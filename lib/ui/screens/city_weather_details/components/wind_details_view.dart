import 'package:flutter/material.dart';
import 'package:flutter_weather_app/core/models/city_weather_object.dart';
import 'package:flutter_weather_app/ui/widgets/widgets.dart';

class WindDetailsView extends StatelessWidget {
  final Wind wind;

  const WindDetailsView({Key? key, required this.wind}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
        border: TableBorder.all(color: Colors.grey, width: .9),
        children: [
          const TableRow(children: [
            Padding(
              padding: EdgeInsets.all(4.0),
              child: MyBodyMediumText(
                text: 'Wind Details',
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
          tableRow(label: 'Speed', value: '${wind.speed ?? 0}'),
          tableRow(label: 'Deg', value: '${wind.deg ?? 0}'),
          tableRow(label: 'Gust', value: '${wind.gust ?? 0}'),
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
