import 'package:flutter/material.dart';
import 'package:flutter_kinoKZ/models/bannerimage.dart';
import 'package:flutter_kinoKZ/models/bannerImage_model.dart';

class SoonMovie extends StatelessWidget {
  const SoonMovie({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    late final movies = [
      AfishaModel(
          id: 1,
          movieName: "Куда приводят мечты",
          image:
              "https://kinopoiskapiunofficial.tech/images/posters/kp/15139.jpg",
          rating: "0",
          ageRestriction: "12",
          genreFilm: "фэнтези драма"),
      AfishaModel(
          id: 2,
          movieName: "Величайший детектив-паук",
          image:
              "https://kinopoiskapiunofficial.tech/images/posters/kp/1317180.jpg",
          rating: "0",
          ageRestriction: "6",
          genreFilm: "фэнтези драма"),
      AfishaModel(
          id: 3,
          movieName: "Стражи Галактики",
          image:
              "https://kinopoiskapiunofficial.tech/images/posters/kp/1044280.jpg",
          rating: "0",
          ageRestriction: "16",
          genreFilm: "фантастика, боевик, комедия, приключения"),
      AfishaModel(
          id: 4,
          movieName: "Спирит",
          image:
              "https://kinopoiskapiunofficial.tech/images/posters/kp/film/4646180.jpg",
          rating: "0",
          ageRestriction: "6",
          genreFilm: "приключения"),
      AfishaModel(
          id: 4,
          movieName: "Возрожденные ",
          image:
              "https://kinopoiskapiunofficial.tech/images/posters/kp_small/1387135.jpg",
          rating: "0",
          ageRestriction: "12",
          genreFilm: "фантастика, ужасы"),
      AfishaModel(
          id: 5,
          movieName: "Черный лотос ",
          image:
              "https://kinopoiskapiunofficial.tech/images/posters/kp_small/4845427.jpg",
          rating: "0",
          ageRestriction: "16",
          genreFilm: "боевик, триллер"),
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
