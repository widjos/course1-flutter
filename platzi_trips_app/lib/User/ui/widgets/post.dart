import 'dart:ui';

import "package:flutter/material.dart";
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/User/ui/widgets/picture_description.dart';
import 'package:platzi_trips_app/widgets/floating_action_button_green.dart';
import 'package:platzi_trips_app/User/ui/widgets/card_picture.dart';

// ignore: must_be_immutable
class Post extends StatelessWidget {
  Place incomingPlace;

  Post(this.incomingPlace, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          CardPicture(incomingPlace.urlImage!),
          Stack(
            alignment: const Alignment(0.9, 1.12),
            children: <Widget>[
              PictureDescription(
                  title: incomingPlace.name,
                  description: incomingPlace.description,
                  type: incomingPlace.description,
                  likes: incomingPlace.likes),
              FloatringActionButtonGreen(iconData: Icons.favorite_border,onPressed: (){},)
            ],
          )
        ],
      ),
    );
  }
}
