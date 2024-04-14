import 'package:flutter/material.dart';
import 'package:flutter_amazon_prime_movie/core/widgets/appbar/app_bar_icons.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/colors.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/image_strings.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/text_strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double imageHeight = screenSize.height * 0.1;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: MyColors.appBarColor,
        title: Image(
          height: imageHeight / 2,
          image: const AssetImage(MyImages.amazonLogo),
          fit: BoxFit.contain,
        ),
        actions: const [
          // Icons
          AppBarIcons(),
        ],
      ),
      backgroundColor: MyColors.appBarColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(MyTexts.simdiGozAt,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Colors.white, fontSize: 25)),
            Text(MyTexts.simdiGozAtSubText,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.grey.withOpacity(0.4), fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
