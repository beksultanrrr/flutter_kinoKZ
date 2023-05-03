import 'package:flutter/material.dart';
import 'package:flutter_kinoKZ/models/bannerimage.dart';
import 'package:flutter_kinoKZ/models/bannerImage_model.dart';

class TrailerMovies extends StatelessWidget {
  const TrailerMovies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    late final movies = [
      AfishaModel(
          id: 1,
          movieName: "Куда приводят мечты",
          image:
              "https://kinopoiskapiunofficial.tech/images/posters/kp/4458585.jpg",
          rating: "8.9",
          ageRestriction: "18",
          genreFilm: "трейлер, ужасы "),
      AfishaModel(
          id: 1,
          movieName: "Куда приводят мечты",
          image:
              "https://kinopoiskapiunofficial.tech/images/posters/kp/1446132.jpg",
          rating: "5.6",
          ageRestriction: "18",
          genreFilm: "трейлер, ужасы "),
    ];
    return GridView.builder(
      // padding: const EdgeInsets.only(left: 14, right: 14, top: 3),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 3,
          mainAxisExtent: 370),
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];
        return BannerImage(
            rating: movie.rating,
            agePlus: movie.ageRestriction,
            image: Image.network(
              movie.image ?? " ",
              fit: BoxFit.cover,
              height: 250,
            ),
            port: movie.genreFilm,
            movieName: movie.movieName);
      },
    );
  }
}
