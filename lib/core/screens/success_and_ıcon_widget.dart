import 'package:flutter/material.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/text_strings.dart';

class SuccessIconAndTextWidget extends StatelessWidget {
  const SuccessIconAndTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        // Mavi Onaylanmış Tik
        Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Icon(
            Icons.check_circle,
            color: Colors.blue,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            // Ödeme Mesajı
            child: Text(
              MyTexts.odemeDetay,
              style: TextStyle(
                color: Colors.white,
                overflow: TextOverflow.clip,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
