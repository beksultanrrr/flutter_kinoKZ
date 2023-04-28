import 'package:flutter/material.dart';
import '../constans.dart';
import 'package:flutter_kinoKZ/screen/movie.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({
    Key? key,
    required this.rating,
    required this.agePlus,
    required this.image,
    required this.port,
    required this.movieName,
  }) : super(key: key);

  final String rating;
  final String agePlus;
  final Image image;
  final String port;
  final String movieName;

  @override
  Widget build(BuildContext context) {
    List<String> words = port.split(" ");

    return Container(
      margin: const EdgeInsets.only(left: 7, right: 7, top: 3),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => MovieDescripButton()),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: SizedBox.fromSize(
                    child: image, //Image.asset(image, fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 0,
                  child: Container(
                    width: 40,
                    height: 20,
                    // padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: double.parse(rating) >= 7
                          ? Colors.green
                          : double.parse(rating) >= 5
                              ? Colors.orange
                              : double.parse(rating) > 0
                                  ? Colors.pink
                                  : Colors.transparent,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 255, 255, 255),
                          size: 10,
                        ),
                        Text(
                          rating,
                          style: kratingNumberStyle,
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: int.parse(agePlus) >= 16
                        ? Colors.deepOrange
                        : int.parse(agePlus) >= 12
                            ? Colors.orangeAccent
                            : Colors.yellow.shade700,
                    child: Text(
                      "$agePlus+",
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              movieName,
              style: kmovieNameStyle,
            ),
            const SizedBox(
              height: 3,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: words
                  .map(
                    (word) => Text(
                      word,
                      style: kportStyle,
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
