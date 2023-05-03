import 'package:flutter/material.dart';
import 'package:flutter_kinoKZ/models/bannerimage.dart';
import 'package:flutter_kinoKZ/models/bannerImage_model.dart';

class Cartoon extends StatelessWidget {
  const Cartoon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    late final movies = [
      AfishaModel(
          id: 3,
          movieName: "Братья Супер Марио в кино",
          image:
              "https://kinopoiskapiunofficial.tech/images/posters/kp/1111005.jpg",
          rating: "9.2",
          ageRestriction: "6",
          genreFilm: "мультфильм"),
      AfishaModel(
          id: 1,
          movieName: "Судзумэ закрывает двери",
          image:
              "https://kinopoiskapiunofficial.tech/images/posters/kp/4769135.jpg",
          rating: "8.8",
          ageRestriction: "12",
          genreFilm: "мультфильм"),
    ];
    return GridView.builder(
      // padding: const EdgeInsets.only(left: 14, right: 14, top: 3),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 3,
          mainAxisExtent: 400),
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
