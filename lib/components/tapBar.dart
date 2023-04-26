import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'genreButton.dart';

class GenreScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 3),
      height: 35,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          GenreButton(
              gendreText: "Cейчас",
              gendreButtonColor: Colors.grey.shade300,
              gendreOntap: () {}),
          GenreButton(
              gendreText: "Cкоро",
              gendreButtonColor: Colors.grey.shade300,
              gendreOntap: () {}),
          GenreButton(
              gendreText: "Детям",
              gendreButtonColor: Colors.grey.shade300,
              gendreOntap: () {}),
          GenreButton(
              gendreText: "Киноклуб Борецкого",
              gendreButtonColor: Colors.grey.shade300,
              gendreOntap: () {})
        ],
      ),
    );
  }
}
