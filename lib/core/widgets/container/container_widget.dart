import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    Key? key,
    this.icon,
    required this.text,
    required this.style,
    this.color = Colors.grey,
    this.iconSize = 28,
    this.iconColor = Colors.white,
  }) : super(key: key);

  final IconData? icon;
  final String text;
  final TextStyle style;
  final Color? color;
  final double? iconSize;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 70,
          width: 80,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            icon,
            color: iconColor,
            size: iconSize,
          ),
        ),
        Text(
          text,
          style: style,
        ),
      ],
    );
  }
}
