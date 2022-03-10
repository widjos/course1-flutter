import "package:flutter/material.dart";

import 'card_image.dart';

class CardImageList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/pa4.jpg"),
          CardImage("assets/img/pa1.jpg"),
          CardImage("assets/img/pa2.jpg"),
          CardImage("assets/img/pa3.jpg"),

        ],
      )
    );
  }
}