import 'package:flutter/material.dart';


class DescriptionPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context){

    final description =  Container(
      margin: const EdgeInsets.only(
        top: 10.0,
        left: 10.0, 
        right: 10.1       
      ),
      child: const Text(
        """aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa 
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa""",
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.normal
        ),
        textAlign: TextAlign.left,
      )
    );

    final star = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
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
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: const Text(
            "Duwili Ella",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w300
,            ),
            textAlign: TextAlign.left, 
          )
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star
          ]
        )
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