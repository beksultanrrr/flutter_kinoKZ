// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DateScroll extends StatelessWidget {
  const DateScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 80,
            child:
                ListView(scrollDirection: Axis.horizontal, children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Column(
                    children: const [
                      Text(
                        "Март",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text("Cр"),
                      Text(
                        "29",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: const [
                      Text(
                        "",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text("Чт"),
                      Text(
                        "30",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: const [
                      Text(
                        "",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text("Пт"),
                      Text(
                        "31",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: const [
                      Text(
                        "Апрель",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Сб",
                        style: TextStyle(color: Colors.orange),
                      ),
                      Text(
                        "1",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.orange),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        "",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Вс",
                        style: TextStyle(color: Colors.orange),
                      ),
                      Text(
                        "2",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.orange),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: const [
                      Text(
                        "",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text("Пн"),
                      Text(
                        "3",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: const [
                      Text(
                        "",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text("Вт"),
                      Text(
                        "4",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: const [
                      Text(
                        "",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text("Ср"),
                      Text(
                        "5",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: const [
                      Text(
                        "",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text("Чт"),
                      Text(
                        "6",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: const [
                      Text(
                        "",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text("Пт"),
                      Text(
                        "7",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: const [
                      Text(
                        "",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Сб",
                        style: TextStyle(color: Colors.orange),
                      ),
                      Text(
                        "8",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.orange),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: const [
                      Text(
                        "",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Вс",
                        style: TextStyle(color: Colors.orange),
                      ),
                      Text(
                        "9",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.orange),
                      ),
                    ],
                  ),
                ],
              ),
            ]),
          ),
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("ВРЕМЯ",
                    style:
                        TextStyle(color: Colors.grey.shade700, fontSize: 16)),
                const SizedBox(
                  width: 18,
                ),
                Text("Язык",
                    style:
                        TextStyle(color: Colors.grey.shade700, fontSize: 16)),
                Text("ВЗР.",
                    style:
                        TextStyle(color: Colors.grey.shade700, fontSize: 16)),
                Text("Дет.",
                    style:
                        TextStyle(color: Colors.grey.shade700, fontSize: 16)),
                Text("Студ.",
                    style:
                        TextStyle(color: Colors.grey.shade700, fontSize: 16)),
                Text("VIP.",
                    style:
                        TextStyle(color: Colors.grey.shade700, fontSize: 16)),
              ],
            ),
            const DatePrice(
                time: "11:25",
                cinemaName: "Chaplin Mega",
                langMov: "Рус",
                priceAdult: "1700",
                childPrice: "1000",
                studentPrice: "1500",
                vipPrice: "-"),
            const DatePrice(
              time: "13:30",
              cinemaName: "Cinemax Esentai",
              langMov: "Каз",
              priceAdult: "1900",
              childPrice: "1200",
              studentPrice: "1700",
              vipPrice: "-",
            ),
            const DatePrice(
              time: "15:45",
              cinemaName: "Cinemax Dostyk Plaza",
              langMov: "Eng",
              priceAdult: "1800",
              childPrice: "1100",
              studentPrice: "1600",
              vipPrice: "-",
            ),
            const DatePrice(
              time: "17:00",
              cinemaName: "Cinemax MEGA Alma-Ata",
              langMov: "Рус",
              priceAdult: "2000",
              childPrice: "1300",
              studentPrice: "1900",
              vipPrice: "-",
            ),
            const DatePrice(
              time: "19:15",
              cinemaName: "Kinoplex Sary Arka",
              langMov: "Каз",
              priceAdult: "1700",
              childPrice: "1000",
              studentPrice: "1500",
              vipPrice: "-",
            ),
            const DatePrice(
              time: "21:30",
              cinemaName: "Kinopark 8 Moskva",
              langMov: "Eng",
              priceAdult: "1900",
              childPrice: "1200",
              studentPrice: "1700",
              vipPrice: "-",
            ),
            const DatePrice(
              time: "23:45",
              cinemaName: "Kinopark 11 IMAX Esentai",
              langMov: "Рус",
              priceAdult: "2200",
              childPrice: "1400",
              studentPrice: "2000",
              vipPrice: "-",
            ),
          ])
        ],
      ),
    );
  }
}

class DatePrice extends StatelessWidget {
  final String time;
  final String cinemaName;
  final String langMov;
  final String priceAdult;
  final String childPrice;
  final String studentPrice;
  final String vipPrice;
  const DatePrice({
    Key? key,
    required this.time,
    required this.cinemaName,
    required this.langMov,
    required this.priceAdult,
    required this.childPrice,
    required this.studentPrice,
    required this.vipPrice,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                    color: const Color.fromARGB(255, 105, 105, 105), width: 1)),
            child: Center(
              child: Text(
                time,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cinemaName,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    langMov,
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 18),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(priceAdult,
                      style:
                          TextStyle(color: Colors.grey.shade700, fontSize: 18)),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(childPrice,
                      style:
                          TextStyle(color: Colors.grey.shade700, fontSize: 18)),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(studentPrice,
                      style:
                          TextStyle(color: Colors.grey.shade700, fontSize: 18)),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(vipPrice,
                      style:
                          TextStyle(color: Colors.grey.shade700, fontSize: 18))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
