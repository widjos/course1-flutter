import "package:flutter/material.dart";
import 'card_image_fab_icon.dart';

class CardImageList extends StatelessWidget {
  final double widthCard = 325.0;
  final double heightCard = 220.0;
  final double leftPadding = 20.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300.0,
        child: ListView(
          padding: const EdgeInsets.all(25.0),
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CardImageWithFabIcon(
                pathImage: "assets/img/pa4.jpg",
                width: widthCard,
                height: heightCard,
                left: leftPadding,
                onPressedFabIcon: () {},
                iconData: Icons.favorite_border),
            CardImageWithFabIcon(
                pathImage: "assets/img/pa4.jpg",
                width: widthCard,
                height: heightCard,
                left: leftPadding,
                onPressedFabIcon: () {},
                iconData: Icons.favorite_border),
            CardImageWithFabIcon(
                pathImage: "assets/img/pa1.jpg",
                width: widthCard,
                height: heightCard,
                left: leftPadding,
                onPressedFabIcon: () {},
                iconData: Icons.favorite_border),
            CardImageWithFabIcon(
                pathImage: "assets/img/pa2.jpg",
                width: widthCard,
                height: heightCard,
                left: leftPadding,
                onPressedFabIcon: () {},
                iconData: Icons.favorite_border),
            CardImageWithFabIcon(
                pathImage: "assets/img/pa3.jpg",
                width: widthCard,
                height: heightCard,
                left: leftPadding,
                onPressedFabIcon: () {},
                iconData: Icons.favorite_border)
          ],
        ));
  }
}
