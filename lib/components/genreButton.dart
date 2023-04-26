import 'package:flutter/material.dart';

class GenreButton extends StatelessWidget {
  GenreButton(
      {required this.gendreText,
      required this.gendreButtonColor,
      required this.gendreOntap});
  final String gendreText;
  final Color gendreButtonColor;
  final Function() gendreOntap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: gendreButtonColor,
        ),
        margin: EdgeInsets.only(
          right: 5,
          left: 5,
          top: 3,
        ),
        padding: EdgeInsets.all(5),
        child: Center(
            child: Text(
          gendreText,
          style: TextStyle(fontSize: 18, color: Colors.black),
        )),
      ),
      onTap: gendreOntap,
    );
  }
}
