// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_kinoKZ/models/cinema_model.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location>
    with SingleTickerProviderStateMixin {
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

  late final cinemas = [
    CinemaModel(
        name: "Chaplin MEGA Alma-Ata (ул. Розыбакиева)",
        image:
            "https://new.chaplin.kz/images/uploads/31051a911a0f29d7338ea6794b7f177d.webp",
        location: "г. Алматы, ул. Розыбакиева, 247А, ТРЦ «MEGA Alma-Ata»"),
    CinemaModel(
        name: "Cinemax Dostyk Multiplex",
        image: "https://cdn.kino.kz/cinema/119/p1000x1000.jpg",
        location:
            "г. Алматы, Самал-2, д. 111, уг.ул. Жолдасбекова, ТРЦ «Достык Плаза»"),
    CinemaModel(
        name: "Lumiera Cinema (ЦУМ)",
        image:
            "https://m.ticketon.kz/files/images/kinoteatr-lumiera-almaty-5.jpg",
        location: "г. Алматы, пр. Абылай хана, 62, «Арбат»"),
    CinemaModel(
        name: "Kinoforum 10 (ТРЦ Forum)",
        image: "https://cdn.kino.kz/cinema/779/g800x534_9.jpg",
        location:
            "г. Алматы, ул. Сейфуллина, 617, ТРЦ «Forum Almaty», 5-й этаж"),
    CinemaModel(
        name: "Kinopark 11 (Есентай) IMAX",
        image: "https://m.ticketon.kz/files/images/5975edc834604509163271.jpg",
        location: "г. Алматы, пр. Аль-Фараби, 77/8, ТЦ «Esentai Mall»"),
    CinemaModel(
        name: "Kinopark 11 (Есентай) IMAX",
        image: "https://cdn.kino.kz/cinema/91/p1000x1000.jpg",
        location: "г. Алматы, ул. Сатпаева, 90 (уг. ул. Тлендиева), ТРК «АDК»")
  ];
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
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(8.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 3,
                  crossAxisSpacing: 3,
                  mainAxisSpacing: 4.0,
                ),
                itemCount: cinemas.length,
                itemBuilder: (context, index) {
                  final cinema = cinemas[index];
                  return Cinema(
                      cinemaName: cinema.name,
                      cinemaLocation: cinema.location,
                      image: cinema.image);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Cinema extends StatelessWidget {
  final String cinemaName;
  final String cinemaLocation;
  final String image;
  const Cinema({
    Key? key,
    required this.cinemaName,
    required this.cinemaLocation,
    required this.image,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.ideographic,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: SizedBox.fromSize(
            size: const Size.fromRadius(48),
            child: Image.network(
              image,
              width: 150,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 30),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cinemaName,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                cinemaLocation,
                overflow: TextOverflow.visible,
                maxLines: 5,
                style: TextStyle(color: Colors.grey.shade500),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
