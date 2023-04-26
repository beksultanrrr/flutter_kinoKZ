import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {required this.colourButton,
      required this.text,
      required this.onPress,
      required this.colourText});
  final Color colourButton;
  final String text;
  final Function() onPress;
  final Color colourText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: colourButton,
        ),
        padding: EdgeInsets.only(right: 25, left: 25),
        child: Text(
          text,
          style: TextStyle(fontSize: 18, color: colourText),
        ),
      ),
      onTap: onPress,
    );
  }
}
