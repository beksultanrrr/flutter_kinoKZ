import 'package:flutter/material.dart';

class RatingNumber extends StatelessWidget {
  const RatingNumber(
      {super.key,
      required this.Number,
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
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
