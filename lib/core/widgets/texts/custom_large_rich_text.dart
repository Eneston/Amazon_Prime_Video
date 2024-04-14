import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({
    Key? key,
    required this.text,
    this.color = Colors.blue,
    this.textSpanColor = Colors.white,
    required this.subText,
    TextStyle? textStyle,
    TextStyle? subTextStyle,
  }) : super(key: key);

  final String text;
  final String subText;
  final Color? color;
  final Color? textSpanColor;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: color,
              fontWeight: FontWeight.bold,
            ),
        children: <TextSpan>[
          TextSpan(
            text: ' $subText',
            style: TextStyle(
              color: textSpanColor,
            ),
          ),
        ],
      ),
    );
  }
}
