import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bannerimage.dart';
import 'package:flutter_application_1/components/tapBar.dart';

class SoonMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 14, right: 14, top: 3),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Expanded(
                      child: BannerImage(
                        movieName: "Джон Уик 4",
                        rating: "9.1",
                        agePlus: "18+",
                        URL: "movieBannerImages/shazam.jpg",
                        port: "боевик, криминал, триллер",
                      ),
                    ),
                    Expanded(
                      child: BannerImage(
                        movieName: "Каникулы off-line 3",
                        rating: "7.5",
                        agePlus: "6+",
                        URL: "movieBannerImages/kanikuliOff.jpg",
                        port: "комедия, семейный",
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Expanded(
                      child: BannerImage(
                        movieName: "Шазам Ярость Богов",
                        rating: "9.1",
                        agePlus: "18+",
                        URL: "movieBannerImages/shazam.jpg",
                        port:
                            "боевик, криминал, приключегия,фэнтези,комедия,триллер",
                      ),
                    ),
                    Expanded(
                      child: BannerImage(
                        movieName: "Родной",
                        rating: "7.5",
                        agePlus: "6+",
                        URL: "movieBannerImages/rodnoi.jpg",
                        port: "комедия, семейный",
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Expanded(
                      child: BannerImage(
                        movieName: "Шазам Ярость Богов",
                        rating: "9.1",
                        agePlus: "18+",
                        URL: "movieBannerImages/shazam.jpg",
                        port:
                            "боевик, криминал, приключегия,фэнтези,комедия,триллер",
                      ),
                    ),
                    Expanded(
                      child: BannerImage(
                        movieName: "Родной",
                        rating: "7.5",
                        agePlus: "6+",
                        URL: "movieBannerImages/rodnoi.jpg",
                        port: "комедия, семейный",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
