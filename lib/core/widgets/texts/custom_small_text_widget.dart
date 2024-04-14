import 'package:flutter/material.dart';

class CustomSmallTextWidget extends StatelessWidget {
  const CustomSmallTextWidget({
    super.key,
    required this.text,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .titleSmall
          ?.copyWith(color: Colors.grey.withOpacity(0.8)),
    );
  }
}
