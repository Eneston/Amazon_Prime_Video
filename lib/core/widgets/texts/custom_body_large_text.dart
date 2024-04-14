import 'package:flutter/material.dart';

class CustomBodyLargeTextWidget extends StatelessWidget {
  const CustomBodyLargeTextWidget({
    super.key,
    required this.text,
    this.style,
  });
  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
    );
  }
}
