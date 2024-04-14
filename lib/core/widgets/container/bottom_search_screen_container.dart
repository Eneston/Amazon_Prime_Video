import 'package:flutter/material.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/colors.dart';

class BottomSearchScreenContainer extends StatelessWidget {
  const BottomSearchScreenContainer({
    Key? key,
    required this.containerText,
    this.height = 90,
    this.width = 150,
    this.color = MyColors.containerBackGroundColor,
    this.onTap,
  }) : super(key: key);

  final String containerText;
  final double? height;
  final double? width;
  final Color? color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double imageHeight = screenSize.height * 0.1;
    final double imageWidth = screenSize.width * 0.48;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: imageHeight / 1.2,
        width: imageWidth,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Center(
          child: Text(
            containerText,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
