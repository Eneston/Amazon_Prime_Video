import 'package:flutter/material.dart';
import 'package:flutter_amazon_prime_movie/core/widgets/container/bottom_search_screen_container.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({
    super.key,
    required this.text,
    required this.subText,
  });
  final String text;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomSearchScreenContainer(
              containerText: text,
            ),
            BottomSearchScreenContainer(
              containerText: subText,
            ),
          ],
        )
      ],
    );
  }
}
