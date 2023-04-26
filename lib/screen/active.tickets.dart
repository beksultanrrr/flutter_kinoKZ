import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ActiveTickets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: Image.asset('movieBannerImages/tickets.png'),
          ),
          Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.only(top: 30, left: 60, right: 60),
                child: Column(children: [
                  Text(
                    "Здесь пока ничего нет",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "В этом разделе будут отоброжатсья активные билеты",
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
                    textAlign: TextAlign.center,
                  )
                ]),
              ))
        ],
      ),
    );
  }
}
