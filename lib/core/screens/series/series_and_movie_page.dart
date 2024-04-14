import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_amazon_prime_movie/core/model/diziler.dart';
import 'package:flutter_amazon_prime_movie/core/model/filmler.dart';
import 'package:flutter_amazon_prime_movie/core/widgets/listView/movie_ListView_seperated.dart';
import 'package:flutter_amazon_prime_movie/core/widgets/listView/series_listView_seperated.dart';
import 'package:flutter_amazon_prime_movie/core/widgets/texts/custom_large_rich_text.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/image_strings.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/text_strings.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MovieAndSeriesPage extends StatefulWidget {
  const MovieAndSeriesPage({Key? key}) : super(key: key);

  @override
  State<MovieAndSeriesPage> createState() => _MovieAndSeriesPageState();
}

class _MovieAndSeriesPageState extends State<MovieAndSeriesPage> {
  final List<String> _diziResimleri = [
    MyImages.euphoriaDizisi,
    MyImages.genvDizisi,
    MyImages.sherlockDizisi,
    MyImages.theBoysDizisi,
    MyImages.jackRyanDizisi,
  ];

  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(initialPage: _currentPage, viewportFraction: 1);
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });

    // Timer ile otomatik geçiş sağladım, 3 saniyede bir yana kayıcak.
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < _diziResimleri.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double imageHeight = screenSize.height * 0.55;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // PageView
            SizedBox(
              height: imageHeight / 2,
              child: PageView.builder(
                controller: _pageController,
                itemCount: _diziResimleri.length,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      _diziResimleri[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 15),
            // SmoothPageIndicator
            Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: _diziResimleri.length,
                effect: WormEffect(
                  activeDotColor: Colors.white,
                  dotColor: Colors.grey.withOpacity(0.6),
                ),
              ),
            ),
            const SizedBox(height: 15),
            // Önerilen Filmler
            const RichTextWidget(
              text: MyTexts.prime,
              subText: MyTexts.onerilenFilmler,
            ),
            // Movie
            MovieListViewSeperated(movies: [
              Movie(
                  filmAdi: MyTexts.gokdelen,
                  filmResimAdi: MyImages.gokdelenFilmi),
              Movie(filmAdi: MyTexts.lucy, filmResimAdi: MyImages.lucyFilmi),
              Movie(filmAdi: MyTexts.cadi, filmResimAdi: MyImages.cadiFilmi),
              Movie(filmAdi: MyTexts.dayi, filmResimAdi: MyImages.dayiFilmi),
              Movie(filmAdi: MyTexts.mumya, filmResimAdi: MyImages.mumyaFilmi),
              Movie(
                  filmAdi: MyTexts.cizmeliKedi,
                  filmResimAdi: MyImages.cizmeliKediFilmi),
            ]),
            const SizedBox(height: 20),
            // Önerilen Diziler
            const RichTextWidget(
              text: MyTexts.prime,
              subText: MyTexts.onerilenDiziler,
            ),
            // Series
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
      ),
    );
  }
}
