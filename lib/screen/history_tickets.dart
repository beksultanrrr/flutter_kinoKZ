import 'package:flutter/material.dart';

class HistoryTickets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: Image.asset('assets/movieBannerImages/tickets.png'),
          ),
          Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.only(top: 30, left: 60, right: 60),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "У вас пока нету историй покупов",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ]),
              ))
        ],
      ),
    );
  }
}
