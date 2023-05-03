import 'package:flutter/material.dart';

class AboutFilm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            "Джон Уик находит способ одержать победу над Правлением Кланов. Однако, прежде чем он сможет заслужить свою свободу, ему предстоит сразиться с новым врагом и его могущественными союзниками.",
            style: TextStyle(color: Colors.grey.shade500, fontSize: 17),
          ),
          SizedBox(
            height: 10,
          ),
          RichText(
            text: new TextSpan(
              // Note: Styles for TextSpans must be explicitly defined.
              // Child text spans will inherit styles from parent
              style: new TextStyle(
                fontSize: 15.0,
                color: Colors.grey.shade800,
              ),
              children: <TextSpan>[
                new TextSpan(text: 'Продолжительность_ _ _ _ _ _ _ _ _ '),
                new TextSpan(
                    text: '169 минут',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15.0,
                    )),
              ],
            ),
          ),
          RichText(
            text: new TextSpan(
              // Note: Styles for TextSpans must be explicitly defined.
              // Child text spans will inherit styles from parent
              style: new TextStyle(
                fontSize: 15.0,
                color: Colors.grey.shade800,
              ),
              children: <TextSpan>[
                new TextSpan(text: 'Премьера в РК_ _ _ _ _ _ _ _ _ _ _ _'),
                new TextSpan(
                    text: '23.03.2023',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15.0,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
