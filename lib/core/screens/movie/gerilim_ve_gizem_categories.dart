import 'package:flutter/material.dart';
import 'package:flutter_amazon_prime_movie/core/model/filmler.dart';
import 'package:flutter_amazon_prime_movie/core/screens/movie/movie_Detail.dart';

class GerilimVeGizemFilmleri extends StatelessWidget {
  const GerilimVeGizemFilmleri({
    super.key,
    required this.filmler,
  });

  final List<Movie> filmler;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double imageHeight = screenSize.height * 1.2;
    final double imageWidth = screenSize.width * 0.2;
    return SizedBox(
      height: imageHeight / 4,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: false,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: filmler.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          var film = filmler[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FilmDetaySayfasi(movie: film),
                ),
              );
            },
            child: Card(
              child: SizedBox(
                width: imageWidth * 2,
                child: Image.asset(
                  film.filmResimAdi,
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
