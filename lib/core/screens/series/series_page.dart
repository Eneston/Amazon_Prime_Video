import 'package:flutter/material.dart';
import 'package:flutter_amazon_prime_movie/core/model/diziler.dart';

import 'package:flutter_amazon_prime_movie/core/widgets/listView/series_listView_seperated.dart';
import 'package:flutter_amazon_prime_movie/core/widgets/texts/custom_large_rich_text.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/image_strings.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/text_strings.dart';

class TvDizileriScreen extends StatefulWidget {
  const TvDizileriScreen({Key? key}) : super(key: key);

  @override
  State<TvDizileriScreen> createState() => _TvDizileriScreenState();
}

class _TvDizileriScreenState extends State<TvDizileriScreen> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double imageHeight = screenSize.height * 0.1;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Önerilen Diziler
          const RichTextWidget(
            text: MyTexts.prime,
            subText: MyTexts.onerilenDiziler,
          ),
          SeriesListViewSeperated(
            series: [
              Series(diziAdi: MyTexts.soz, diziResimAdi: MyImages.sozDizisi),
              Series(
                  diziAdi: MyTexts.sherlock,
                  diziResimAdi: MyImages.sherlockDizisi),
              Series(
                  diziAdi: MyTexts.cernobil,
                  diziResimAdi: MyImages.cernobilDizisi),
              Series(
                  diziAdi: MyTexts.theOffice,
                  diziResimAdi: MyImages.theOfficeDizisi),
              Series(
                  diziAdi: MyTexts.deahtsGame,
                  diziResimAdi: MyImages.deahtsGameDizisi),
            ],
          ),
        ],
      ),
    );
  }
}
