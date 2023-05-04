import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MovieDateModel extends StatelessWidget {
  const MovieDateModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              child: const Center(
                child: Text("10:40"),
              ),
            ),
            Column(
              children: [
                const Text("Kinopark 7 IMAX Keruen"),
                Row(
                  children: const [
                    Text("RUS"),
                    Text("2300"),
                    Text("900"),
                    Text("1400"),
                    Text("-")
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
