import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'genreButton.dart';

class DateScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 80,
      child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Column(
              children: [
                Text(
                  "Март",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Cр"),
                Text(
                  "29",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              children: const [
                Text(
                  "",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Чт"),
                Text(
                  "30",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              children: [
                Text(
                  "",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Пт"),
                Text(
                  "31",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              children: [
                Text(
                  "Апрель",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Сб",
                  style: TextStyle(color: Colors.orange),
                ),
                Text(
                  "1",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.orange),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Вс",
                  style: TextStyle(color: Colors.orange),
                ),
                Text(
                  "2",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.orange),
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              children: [
                Text(
                  "",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Пн"),
                Text(
                  "3",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              children: [
                Text(
                  "",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Вт"),
                Text(
                  "4",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              children: [
                Text(
                  "",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Ср"),
                Text(
                  "5",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              children: [
                Text(
                  "",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Чт"),
                Text(
                  "6",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              children: [
                Text(
                  "",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Пт"),
                Text(
                  "7",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              children: [
                Text(
                  "",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Сб",
                  style: TextStyle(color: Colors.orange),
                ),
                Text(
                  "8",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.orange),
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              children: [
                Text(
                  "",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Вс",
                  style: TextStyle(color: Colors.orange),
                ),
                Text(
                  "9",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.orange),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
