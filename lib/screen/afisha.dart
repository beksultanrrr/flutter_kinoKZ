import 'package:flutter/material.dart';
import 'package:flutter_kinoKZ/screen/soonMovie.dart';

import 'now_movies.dart';

class Afisha extends StatefulWidget {
  const Afisha({super.key});

  @override
  _AfishaState createState() => _AfishaState();
}

class _AfishaState extends State<Afisha> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
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
          icon: Row(
            children: [
              Image.asset(
                "assets/movieBannerImages/logo.png",
                width: 30,
                height: 30,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "Aлматы",
                style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: "Raleway",
                  color: Colors.black,
                ),
              ),
            ],
          ),
          label: const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.black,
            size: 20,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(
                    left: 5, right: 5, top: 10, bottom: 10),
                child: TextField(
                    decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Фильмы, кинотеатры, новости",
                  fillColor: Colors.black12,
                  filled: true,
                  prefixIcon: const Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 0, color: Colors.transparent),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ))),
            Container(
              margin:
                  const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
              height: 45,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(
                  20.0,
                ),
              ),
              child: TabBar(
                isScrollable: true,
                indicatorColor: const Color.fromARGB(255, 240, 61, 61),
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
                tabs: const [
                  Tab(
                    text: 'Сейчас',
                  ),
                  Tab(
                    text: 'Скоро',
                  ),
                  Tab(
                    text: 'Комедия',
                  ),
                  Tab(
                    text: 'Трейлер',
                  ),
                  Tab(
                    text: 'Мультфильмы',
                  ),
                ],
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
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
