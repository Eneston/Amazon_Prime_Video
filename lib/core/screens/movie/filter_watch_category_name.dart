import 'package:flutter/material.dart';
import 'package:flutter_amazon_prime_movie/core/widgets/container/bottom_search_screen_container.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/colors.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/text_strings.dart';

class FilterWatchCategoryName extends StatelessWidget {
  const FilterWatchCategoryName({
    Key? key,
    this.splashColor = Colors.white,
    this.highlightColor = Colors.transparent,
  }) : super(key: key);

  final Color? splashColor;
  final Color? highlightColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: InkWell(
            splashColor: splashColor, // Tıklama efekti rengi
            highlightColor: highlightColor, // Vurgu rengi
            onTap: () {},

            child: const BottomSearchScreenContainer(
              color: MyColors.appBarColor,
              containerText: MyTexts.tumu,
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            splashColor: splashColor,
            highlightColor: highlightColor,
            onTap: () {},
            child: const BottomSearchScreenContainer(
              color: MyColors.appBarColor,
              containerText: MyTexts.filmler,
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            splashColor: splashColor,
            highlightColor: highlightColor,
            onTap: () {},
            child: const BottomSearchScreenContainer(
              color: MyColors.appBarColor,
              containerText: MyTexts.tvDizileri,
            ),
          ),
        ),
      ],
    );
  }
}
