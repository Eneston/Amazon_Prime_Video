import 'package:flutter/material.dart';
import 'package:flutter_amazon_prime_movie/core/widgets/column/Column_widget.dart';
import 'package:flutter_amazon_prime_movie/core/widgets/texts/custom_body_large_text.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/text_strings.dart';

class SearchBarListView extends StatelessWidget {
  const SearchBarListView({
    super.key,
    this.thickness = 1,
  });

  final double thickness;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 20),
      scrollDirection: Axis.vertical,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: CustomBodyLargeTextWidget(
              text: MyTexts.turler,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.white)),
        ),
        const SizedBox(height: 15),
        // Aksiyon Ve Macera & Komedi
        const ColumnWidget(
          text: MyTexts.aksiyonVeMacera,
          subText: MyTexts.komedi,
        ),
        const SizedBox(height: 15),

        // Belgesel & Dram
        const ColumnWidget(
          text: MyTexts.belgesel,
          subText: MyTexts.dram,
        ),
        const SizedBox(height: 15),

        // Fantastik & Korku
        const ColumnWidget(
          text: MyTexts.fantastik,
          subText: MyTexts.korku,
        ),
        const SizedBox(height: 15),

        // Çocuk & Gizem Ve Gerilim
        const ColumnWidget(
          text: MyTexts.cocuk,
          subText: MyTexts.gizemVeGerilim,
        ),
        const SizedBox(height: 15),

        // Romantik & BilimKurgu
        const ColumnWidget(
          text: MyTexts.romantik,
          subText: MyTexts.bilimKurgu,
        ),

        const SizedBox(height: 25),
        // SeçmeKoleksiyonlar & avrupadaUretilmistir
        const CustomBodyLargeTextWidget(text: MyTexts.secmeKoleksiyonlar),
        Divider(thickness: thickness),
        const CustomBodyLargeTextWidget(text: MyTexts.avrupadaUretilmistir),
      ],
    );
  }
}
