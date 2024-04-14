import 'package:flutter/material.dart';
import 'package:flutter_amazon_prime_movie/core/screens/bottom_bar.dart';
import 'package:flutter_amazon_prime_movie/core/screens/movie/filter_watch_category_name.dart';
import 'package:flutter_amazon_prime_movie/core/screens/series/series_and_movie_page.dart';
import 'package:flutter_amazon_prime_movie/core/widgets/appbar/app_bar_icons.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/colors.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/image_strings.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double imageHeight = screenSize.height * 0.1;

    return Scaffold(
      appBar: AppBar(
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
      body: const Column(
        children: [
          // Tümü-Filmler-Tv Dizileri
          FilterWatchCategoryName(),
          // PageViewİmage and SmoothPageIndicator
          Expanded(child: MovieAndSeriesPage()),
        ],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
