import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profle extends StatefulWidget {
  @override
  _ProfleState createState() => _ProfleState();
}

class _ProfleState extends State<Profle> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 140, right: 140, top: 50),
                    width: 70,
                    height: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(48),
                        child: Image.asset('assets/movieBannerImages/profileImage.jpg',
                            fit: BoxFit.cover),
                      ),
                    )),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Аружан",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.location_on_sharp,
                  color: Colors.black,
                ),
                label: Text(
                  "Алматы",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )),
            Divider(
              height: 30.0,
              color: Colors.grey[700],
            ),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.pencil,
                  color: Colors.black,
                ),
                label: Text(
                  "Отзывы",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )),
            Divider(
              height: 30.0,
              color: Colors.grey[700],
            ),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.creditCard,
                  color: Colors.black,
                ),
                label: Text(
                  "Банковские карты",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )),
            Divider(
              height: 30.0,
              color: Colors.grey[700],
            ),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.remove_red_eye_sharp,
                  color: Colors.black,
                ),
                label: Text(
                  "Поддержка",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )),
            Divider(
              height: 30.0,
              color: Colors.grey[700],
            ),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                label: Text(
                  "Настройки профиля",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
