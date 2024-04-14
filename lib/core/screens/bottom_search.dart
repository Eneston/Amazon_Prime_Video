import 'package:flutter/material.dart';
import 'package:flutter_amazon_prime_movie/core/screens/bottom_search_bar_design.dart';
import 'package:flutter_amazon_prime_movie/core/screens/search_bar_list_view.dart';
import 'package:flutter_amazon_prime_movie/core/widgets/appbar/app_bar_icons.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/colors.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/image_strings.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double imageHeight = screenSize.height * 0.1;
    return Scaffold(
      backgroundColor: MyColors.appBarColor,
      appBar: AppBar(
        backgroundColor: MyColors.appBarColor,
        automaticallyImplyLeading: false,
        title: Image(
          height: imageHeight / 2,
          image: const AssetImage(MyImages.amazonLogo),
          fit: BoxFit.contain,
        ),
        actions: const [
          // Icons
          AppBarIcons(),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: SearchBarDesign(),
        ),
      ),
      body: const SearchBarListView(),
    );
  }
}
