import 'package:flutter/material.dart';
import 'package:flutter_kinoKZ/screen/location.dart';
import 'afisha.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'profile.dart';
import 'my_tickets.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.post_add_rounded),
            label: 'Афиша',
          ),
          NavigationDestination(
            icon: Icon(FontAwesomeIcons.compass),
            label: 'Места',
          ),
          NavigationDestination(
            icon: Icon(FontAwesomeIcons.ticket),
            label: 'Мои билеты',
          ),
          NavigationDestination(
            icon: Icon(FontAwesomeIcons.person),
            label: 'Профиль',
          ),
        ],
      ),
      body: <Widget>[
        const Afisha(),
        const Location(),
        MyTickets(),
        Profle()
      ][currentPageIndex],
    );
  }
}
