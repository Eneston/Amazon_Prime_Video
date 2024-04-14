import 'package:flutter/material.dart';
import 'package:flutter_amazon_prime_movie/core/model/filmler.dart';
import 'package:flutter_amazon_prime_movie/core/screens/movie/movie_Detail.dart';

class MovieListViewSeperated extends StatelessWidget {
  const MovieListViewSeperated({
    super.key,
    required this.movies,
  });

  final List<Movie> movies;

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
        itemCount: movies.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          var film = movies[index];
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
