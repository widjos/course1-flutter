import "package:flutter/material.dart";
import 'package:platzi_trips_app/Place/ui/widgets/description_place.dart';
import 'package:platzi_trips_app/Place/ui/widgets/review_list.dart';
import 'package:platzi_trips_app/Place/ui/screens/header_appbar.dart';

class HomeTrip extends StatelessWidget {
  const HomeTrip({ Key? key }) : super(key: key);

  final String  descripcion = "Lorem Ipsum is simply dummy text of the printing and typesetting industry.  Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. \n\n It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
  

  @override
  Widget build(BuildContext context) {
    return Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescriptionPlace("Bahamas", 4, descripcion),
                ReviewList()
              ],
            ),
            HeaderAppBar()
          ],
        );
  }
}