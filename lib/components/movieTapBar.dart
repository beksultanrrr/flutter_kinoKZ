import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'genreButton.dart';

class MovieTapBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        GenreButton(
            gendreText: "Билеты",
            gendreButtonColor: Colors.grey.shade300,
            gendreOntap: () {}),
        GenreButton(
            gendreText: "О фильме",
            gendreButtonColor: Colors.grey.shade300,
            gendreOntap: () {}),
        GenreButton(
            gendreText: "Отзывы",
            gendreButtonColor: Colors.grey.shade300,
            gendreOntap: () {}),
      ],
    );
  }
}
