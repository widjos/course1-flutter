import 'package:flutter/material.dart';

class PictureDescription extends StatelessWidget {


  String title = "Mountain Stars Range";
  String description = "Hiking Water tall hunting";
  String type = "Scenary & Photography";
  int likes = 0;
  
  PictureDescription({required this.title, required this.description, required this.type, required this.likes});

  @override
  Widget build(BuildContext context) {

    final nameText = Container(
      margin: const EdgeInsets.only(
        top: 18.0,
        left: 20.0
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          fontFamily: "Lato"
       ),
            textAlign: TextAlign.left, 
      )
    );

    final likesPicture = Container(
      margin: const EdgeInsets.only(
        top: 10.0,
        left: 20.0
      ),
      child: Text(
        likes.toString(),
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          fontFamily: "Lato",
          color: Colors.amber[600]
       ),
            textAlign: TextAlign.left, 
      )
    );

    final descriptionText = Container(
      margin: const EdgeInsets.only(
        top: 7.0,
        left: 20.0
      ),
      child: Text(
        description,
        style: const TextStyle(
          fontSize: 11.0,
          fontWeight: FontWeight.bold,
          fontFamily: "Lato",
          color: Color(0xFFa3a5a7)
       ),
            textAlign: TextAlign.left, 
      )
    );

    final description2 = Container(
      margin: const EdgeInsets.only(
        top: 1.0,
        left: 20.0
      ),
      child: Text(
        type,
        style: const TextStyle(
          fontSize: 11.0,
          fontWeight: FontWeight.bold,
          fontFamily: "Lato",
          color: Color(0xFFa3a5a7)
       ),
            textAlign: TextAlign.left, 
      )
    );

    return Container(
      margin: const EdgeInsets.only(
        top: 255.0
      ),
      height: 125.0,
      width: 270.0,  
      decoration: const BoxDecoration(
        borderRadius:  BorderRadius.all(Radius.circular(30.0)),
        shape: BoxShape.rectangle,
        color: Colors.white,
        boxShadow:  <BoxShadow>[
        BoxShadow(
          color: Colors.black38,
          blurRadius: 15.0,
          offset: Offset(0.0,7.0)
        )
      ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          nameText,
          descriptionText,
          description2,
          likesPicture

        ],

      ),
    );
  }
}