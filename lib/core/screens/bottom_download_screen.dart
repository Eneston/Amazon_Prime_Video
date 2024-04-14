import 'package:flutter/material.dart';
import 'package:flutter_amazon_prime_movie/core/widgets/appbar/app_bar_icons.dart';
import 'package:flutter_amazon_prime_movie/core/widgets/texts/custom_large_text_widget.dart';
import 'package:flutter_amazon_prime_movie/core/widgets/texts/custom_large_rich_text.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/colors.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/image_strings.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/text_strings.dart';

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({super.key});

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
            // Henüz Video İndirilmedi
            TextWidget(
              text: MyTexts.henuzVideoIndirilmedi,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),

            // RichText
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      RichTextWidget(
                        text: MyTexts.otomatikIndirme,
                        subText: MyTexts.yonet,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
