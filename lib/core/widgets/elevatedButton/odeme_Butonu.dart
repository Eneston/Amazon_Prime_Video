import 'package:flutter/material.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/text_strings.dart';

class OdemeButonu extends StatelessWidget {
  const OdemeButonu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(),
          backgroundColor: Colors.grey.withOpacity(0.4),
          minimumSize: const Size.fromHeight(50),
          maximumSize: const Size.fromHeight(50),
        ),
        onPressed: () {},
        child: Text(
          MyTexts.bunuNasilIzlerim,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
