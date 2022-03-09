import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review.dart';
import 'package:platzi_trips_app/star.dart';


class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int stars;
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

    final star_half =  Container(
      margin: const EdgeInsets.only(
        top: 303.0,
        right: 3.0
      ),

      child: const Icon(
        Icons.star_half,
        color: Colors.amber 
      )
    );

    final star_border =  Container(
      margin: const EdgeInsets.only(
        top: 303.0,
        right: 3.0
      ),

      child: const Icon(
        Icons.star_border
      )
    );


    final star = Container(
      margin: const EdgeInsets.only(
        top: 303.0,
        right: 3.0
      ),

      child: const Icon(
        Icons.star,
        color: Colors.amber 
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
        Star(3.8)
      ],
    );

    return Column(
      children: <Widget>[
        titleStars,
        description
      ],
    );
  }
}