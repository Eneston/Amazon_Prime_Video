import 'package:flutter/material.dart';

class CustomBodyLargeRichText extends StatelessWidget {
  const CustomBodyLargeRichText({
    super.key,
    required this.text,
    required this.subText,
  });
  final String text;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Colors.blue,
              fontWeight: FontWeight.w700,
            ),
        children: <TextSpan>[
          TextSpan(
            text: subText,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.grey.withOpacity(0.8),
                  fontWeight: FontWeight.w700,
                ),
          ),
        ],
      ),
    );
  }
}
