import "package:flutter/material.dart";
import "package:platzi_trips_app/gradient_back.dart";
import "package:platzi_trips_app/card_image_list.dart";

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack("Bievenido",250.0),
        CardImageList()
      ],
      
    );
  }
}