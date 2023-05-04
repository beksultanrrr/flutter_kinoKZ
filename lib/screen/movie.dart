import 'package:flutter/material.dart';

import 'package:flutter_kinoKZ/constans.dart';
import 'package:flutter_kinoKZ/components/ratingNumber.dart';
import 'package:flutter_kinoKZ/components/dateScorl.dart';
import 'package:flutter_kinoKZ/components/aboutFilm.dart';

class MovieDescripButton extends StatefulWidget {
  const MovieDescripButton({super.key});

  @override
  _MovieDescripButtonState createState() => _MovieDescripButtonState();
}

class _MovieDescripButtonState extends State<MovieDescripButton>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              "assets/movieBannerImages/johnWick.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.white,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Джон Уик 4", style: kmovieNameStyle),
                    const Text("John Wick: Chapter 4"),
                    const Text("Боевик,криминал, трейлер"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const RatingNumber(
                            Number: Text(
                              "9.0",
                              style: TextStyle(
                                  fontSize: 35, fontWeight: FontWeight.bold),
                            ),
                            text: "Kino.kz",
                            textColor: Colors.orange,
                            textSize: 20),
                        RatingNumber(
                            Number: Text("8.5",
                                style: TextStyle(
                                    fontSize: 35, color: Colors.grey.shade400)),
                            text: "IMDB",
                            textColor: Colors.grey.shade400,
                            textSize: 23),
                        RatingNumber(
                            Number: Text("7.9",
                                style: TextStyle(
                                    fontSize: 35, color: Colors.grey.shade400)),
                            text: "КП",
                            textColor: Colors.grey.shade400,
                            textSize: 23)
                      ],
                    ),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(
                          25.0,
                        ),
                      ),
                      child: TabBar(
                        controller: _tabController,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            25.0,
                          ),
                          color: Colors.orange,
                        ),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black,
                        tabs: const [
                          Tab(
                            text: 'Билеты',
                          ),
                          Tab(
                            text: 'О фильме',
                          ),
                          Tab(
                            text: 'Отзывы',
                          ),
                        ],
                      ),
                    ),
                    // tab bar view here
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          DateScroll(),
                          AboutFilm(),
                          AboutFilm(),
                          const Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                   
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
