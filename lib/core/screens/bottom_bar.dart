import 'package:flutter/material.dart';
import 'package:flutter_amazon_prime_movie/core/screens/bottom_download_screen.dart';
import 'package:flutter_amazon_prime_movie/core/screens/bottom_search.dart';
import 'package:flutter_amazon_prime_movie/core/screens/home.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/colors.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/text_strings.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
    this.selectedColor = Colors.white,
    this.unselectedColor = Colors.white,
  });

  final Color? selectedColor;
  final Color? unselectedColor;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BottomNavigationBar(
        backgroundColor: MyColors.appBarColor,
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
              child: const Icon(
                Icons.home_filled,
                size: 25,
                color: Colors.white,
              ),
            ),
            label: MyTexts.anamenu,
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DownloadsScreen()));
              },
              child: const Icon(
                Icons.file_download_outlined,
                size: 25,
                color: Colors.white,
              ),
            ),
            label: MyTexts.indirilenler,
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchScreen()));
              },
              child: const Icon(
                Icons.search_outlined,
                size: 25,
                color: Colors.white,
              ),
            ),
            label: MyTexts.arama,
          ),
        ],
        selectedItemColor: selectedColor,
        unselectedItemColor: unselectedColor?.withOpacity(0.5),
        selectedLabelStyle: const TextStyle(color: Colors.white),
      ),
    );
  }
}
