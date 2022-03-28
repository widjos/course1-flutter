import "package:flutter/material.dart";
import 'package:platzi_trips_app/widgets/gradient_back.dart';
import 'package:platzi_trips_app/Place/ui/widgets/card_image_list.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack(tittle: "Bievenido", heightNab: 250.0),
        CardImageList()
      ],
      
    );
  }
}