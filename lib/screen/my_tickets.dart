import 'package:flutter/material.dart';
import 'active.tickets.dart';
import 'history_tickets.dart';

class MyTickets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            new SliverAppBar(
              backgroundColor: Colors.transparent,
              title:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text('Мои билеты'),
              ]),
              pinned: true,
              floating: true,
              bottom: TabBar(
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange),
                isScrollable: true,
                labelPadding: EdgeInsets.symmetric(vertical: 1),
                tabs: [
                  Tab(
                      child: Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Text(
                      'Активные билеты',
                    ),
                  )),
                  Tab(
                      child: Container(
                    padding: EdgeInsets.only(left: 60, right: 60),
                    child: Text(
                      'История',
                    ),
                  )),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: <Widget>[ActiveTickets(), HistoryTickets()],
        ),
      )),
    );
  }
}
