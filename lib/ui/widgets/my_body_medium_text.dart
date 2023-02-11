import 'package:flutter/material.dart';

class MyBodyMediumText extends StatelessWidget {
  final String text;
  final Color? color;
  final bool? isBold;

  const MyBodyMediumText(
      {Key? key, required this.text, this.color, this.isBold = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: color,
            fontWeight: isBold! ? FontWeight.bold : FontWeight.normal));
  }
}
