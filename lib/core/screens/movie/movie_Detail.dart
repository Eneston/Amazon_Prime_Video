import 'package:flutter/material.dart';
import 'package:flutter_amazon_prime_movie/core/model/filmler.dart';
import 'package:flutter_amazon_prime_movie/core/screens/success_and_%C4%B1con_widget.dart';
import 'package:flutter_amazon_prime_movie/core/widgets/appbar/app_bar_icons.dart';
import 'package:flutter_amazon_prime_movie/core/widgets/container/container_widget.dart';
import 'package:flutter_amazon_prime_movie/core/widgets/elevatedButton/odeme_Butonu.dart';
import 'package:flutter_amazon_prime_movie/core/widgets/texts/custom_body_large_rich_text.dart';
import 'package:flutter_amazon_prime_movie/core/widgets/texts/custom_large_text_widget.dart';
import 'package:flutter_amazon_prime_movie/core/widgets/texts/custom_small_text_widget.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/colors.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/text_strings.dart';

class FilmDetaySayfasi extends StatelessWidget {
  final Movie movie;

  const FilmDetaySayfasi({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double imageHeight = screenSize.height * 1.2;
    return Scaffold(
      backgroundColor: MyColors.appBarColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: MyColors.appBarColor,
        actions: const [
          // Icons
          AppBarIcons(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Film Resmi ve Adı
            Stack(
              children: [
                Image.asset(
                  movie.filmResimAdi,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: imageHeight / 4,
                ),
              ],
            ),
            const SizedBox(height: 15),
            // Film Adı
            Align(
              alignment: Alignment.topCenter,
              child: TextWidget(
                text: movie.filmAdi,
              ),
            ),
            const SizedBox(height: 10),

            // İkon and Text
            const SuccessIconAndTextWidget(),
            const SizedBox(height: 10),

            // Ödeme Butonu
            const OdemeButonu(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ContainerWidget(
                    icon: Icons.add,
                    text: MyTexts.izlemeListesi,
                    style: TextStyle(color: Colors.white),
                    color: Colors.black,
                  ),
                  ContainerWidget(
                    icon: Icons.thumb_up,
                    text: MyTexts.begen,
                    style: TextStyle(color: Colors.white),
                    color: Colors.black,
                  ),
                  ContainerWidget(
                    icon: Icons.thumb_down,
                    text: MyTexts.begenme,
                    style: TextStyle(color: Colors.white),
                    color: Colors.black,
                  ),
                  ContainerWidget(
                    icon: Icons.share,
                    text: MyTexts.paylas,
                    style: TextStyle(color: Colors.white),
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            // Açıklama Text
            Center(
              child: Text(
                MyTexts.aciklama,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                    ),
              ),
            ),
            const SizedBox(height: 15),
            const CustomSmallTextWidget(text: MyTexts.imdbPuan),
            const CustomSmallTextWidget(text: MyTexts.yil),
            const CustomBodyLargeRichText(
              text: MyTexts.diller,
              subText: MyTexts.sesVeAltyazi,
            ),
          ],
        ),
      ),
    );
  }
}
