import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final bool isLoading;

  const MyButton(
      {Key? key,
      required this.onPressed,
      required this.label,
      required this.isLoading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: isLoading ? () {} : onPressed,
        child: isLoading
            ? Container(
                padding: const EdgeInsets.all(4),
                height: 26,
                width: 26,
                child: const CircularProgressIndicator(color: Colors.white))
            : Text(
                label,
              ));
  }
}
