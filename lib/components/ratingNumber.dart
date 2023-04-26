import 'dart:ffi';

import 'package:flutter/material.dart';
import '../screen/movie.dart';

class RatingNumber extends StatelessWidget {
  RatingNumber(
      {required this.Number,
      required this.text,
      required this.textColor,
      required this.textSize});
  final Widget Number;
  final String text;
  final Color textColor;
  final double textSize;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(9),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Number,
            Text(
              text,
              style: TextStyle(color: textColor, fontSize: textSize),
            )
          ],
        ));
  }
}
