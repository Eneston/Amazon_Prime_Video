import 'package:flutter/material.dart';
import 'package:flutter_amazon_prime_movie/core/screens/search_text_field.dart';

class SearchBarDesign extends StatelessWidget {
  const SearchBarDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 5, bottom: 5),
      child: SearchTextField(),
    );
  }
}
