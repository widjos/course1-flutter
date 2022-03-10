import 'package:flutter/material.dart';
import 'package:platzi_trips_app/button.dart';
import 'package:platzi_trips_app/star.dart';


class DescriptionPlace extends StatelessWidget {

  String namePlace;
  double stars;
  String  descriptionPlace; 
        
  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context){

    final description =  Container(
      margin: const EdgeInsets.only(
        top: 10.0,
        left: 20.0, 
        right: 20.0       
      ),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
          fontFamily: "Lato"
        ),
        textAlign: TextAlign.left,
      )
    );

    final titleStars = Row (
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 300.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w500
,            ),
            textAlign: TextAlign.left, 
          )
        ),
        Star(stars, 303.0, 3.0)
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        titleStars,
        description,
        Button("Navigate")
      ],
    );
  }
}