import "package:flutter/material.dart";
import 'package:platzi_trips_app/floating_action_button_green.dart';
import 'package:platzi_trips_app/profile/card_picture.dart';
import 'package:platzi_trips_app/profile/picture_description.dart';

// ignore: must_be_immutable
class Post extends StatelessWidget {

  String  picture = 'assets/img/mio1.jpg';
  
  Post(this.picture, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          CardPicture(picture),
          Stack(
            alignment: const Alignment(0.9, 1.12),
            children: <Widget>[
              PictureDescription(),
              FloatringActionButtonGreen()
            ],
          )

        ],
      ),
    );
  }
}