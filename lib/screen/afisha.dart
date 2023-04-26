import 'package:flutter/material.dart';

import 'package:flutter_application_1/constans.dart';
import 'package:flutter_application_1/components/ratingNumber.dart';
import 'package:flutter_application_1/components/dateScorl.dart';
import 'package:flutter_application_1/components/aboutFilm.dart';
import 'package:flutter_application_1/bannerimage.dart';
import 'soonMovie.dart';
import 'now_movies.dart';

class Afisha extends StatefulWidget {
  @override
  _AfishaState createState() => _AfishaState();
}

class _AfishaState extends State<Afisha> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
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
      appBar: AppBar(
        title: TextButton.icon(
          onPressed: () {},
          icon: Text(
            "Aлматы",
            style: TextStyle(
              fontSize: 15.0,
              fontFamily: "Raleway",
              color: Colors.black,
            ),
          ),
          label: Icon(
            Icons.keyboard_arrow_down,
            color: Colors.black,
            size: 20,
          ),
        ),
        actions: [
          Padding(
            child: Icon(Icons.menu),
            padding: EdgeInsets.only(right: 20),
          )
        ],
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                child: TextField(
                    decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Фильмы, кинотеатры, новости",
                  fillColor: Colors.black12,
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0, color: Colors.transparent),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ))),
            Container(
              margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
              height: 45,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(
                  20.0,
                ),
              ),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Color.fromARGB(255, 240, 61, 61),
                controller: _tabController,
                // give the indicator a decoration (color and border radius)
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20.0,
                  ),
                  color: Colors.orange,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                    text: 'Сейчас',
                  ),
                  Tab(
                    text: 'Скоро',
                  ),
                  Tab(
                    text: 'Детям',
                  ),
                  Tab(
                    text: 'Киноклуб Борецкого',
                  ),
                ],
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  NowMovie(),
                  SoonMovie(),
                  NowMovie(),
                  SoonMovie(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
