
import 'package:flutter/material.dart';

class MyHeadlineSmall extends StatelessWidget {
  final String text;
  final Color? color;

  const MyHeadlineSmall({Key? key, required this.text, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: color));
  }
}
