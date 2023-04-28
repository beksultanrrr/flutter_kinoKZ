import 'package:flutter/material.dart';
import 'package:flutter_kinoKZ/models/bannerimage.dart';
import 'package:flutter_kinoKZ/models/bannerImage_model.dart';

class NowMovie extends StatefulWidget {
  const NowMovie({
    super.key,
  });

  @override
  State<NowMovie> createState() => _NowMovieState();
}

class _NowMovieState extends State<NowMovie> {
  late final movies = [
    AfishaModel(
        id: 1,
        movieName: "Джон Уик 4",
        image: "assets/movieBannerImages/johnWick.jpg",
        rating: "9.1",
        ageRestriction: "18",
        genreFilm: "боевик, криминал, триллер"),
    AfishaModel(
        id: 1,
        movieName: "Джон Уик 4",
        image: "assets/movieBannerImages/johnWick.jpg",
        rating: "5.4",
        ageRestriction: "12",
        genreFilm: "боевик, криминал, триллер"),
    AfishaModel(
        id: 1,
        movieName: "Джон Уик 4",
        image: "assets/movieBannerImages/johnWick.jpg",
        rating: "4",
        ageRestriction: "6",
        genreFilm: "боевик, криминал, триллер"),
    AfishaModel(
        id: 1,
        movieName: "Джон Уик 4",
        image: "assets/movieBannerImages/johnWick.jpg",
        rating: "9.1",
        ageRestriction: "18",
        genreFilm: "боевик, криминал, триллер")
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // padding: const EdgeInsets.only(left: 14, right: 14, top: 3),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 3,
          mainAxisExtent: 320),
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];
        return BannerImage(
            rating: movie.rating,
            agePlus: movie.ageRestriction,
            image: Image.asset(movie.image ?? " ", fit: BoxFit.cover),
            port: movie.genreFilm,
            movieName: movie.movieName);
      },
    );
  }
}
