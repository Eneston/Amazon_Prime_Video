import 'package:flutter/material.dart';
import 'package:flutter_amazon_prime_movie/core/model/diziler.dart';
import 'package:flutter_amazon_prime_movie/core/screens/series/series_detail.dart';

class SeriesListViewSeperated extends StatelessWidget {
  const SeriesListViewSeperated({
    super.key,
    required this.series,
  });

  final List<Series> series;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double imageHeight = screenSize.height * 0.55;
    final double imageWidth = screenSize.width * 0.2;
    return SizedBox(
      height: imageHeight / 4,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: false, // Otomatik boyutlandırmayı kapat
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: series.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          var dizi = series[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DiziDetaySayfasi(dizi: dizi),
                ),
              );
            },
            child: Card(
              child: SizedBox(
                width: imageWidth * 2,
                child: Image.asset(
                  dizi.diziResimAdi,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
