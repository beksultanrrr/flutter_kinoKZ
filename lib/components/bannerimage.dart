import 'package:flutter/material.dart';
import '../constans.dart';
import 'package:flutter_application_1/screen/movie.dart';

class BannerImage extends StatelessWidget {
  BannerImage(
      {required this.rating,
      required this.agePlus,
      required this.URL,
      required this.port,
      required this.movieName});
  final String rating;
  final String agePlus;
  final String URL;
  final String port;
  final String movieName;
  @override
  Widget build(BuildContext context) {
    List<String> words = port.split(" ");
    return Container(
        margin: EdgeInsets.only(left: 7, right: 7, top: 3),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MovieDescripButton()));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(13),
                    child: SizedBox.fromSize(
                      child: Image.asset(URL, fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 0,
                    child: Container(
                      width: 40,
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
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
                      // padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                    ),
                  ),
                  Positioned(
                      bottom: 5,
                      right: 5,
                      child: CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.deepOrange,
                        child: Text(
                          agePlus,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                movieName,
                style: kmovieNameStyle,
              ),
              SizedBox(
                height: 3,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: words
                    .map((word) => Text(
                          word,
                          style: kportStyle,
                        ))
                    .toList(),
              )
            ],
          ),
        ));
  }
}
