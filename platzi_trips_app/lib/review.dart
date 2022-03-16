import 'package:flutter/material.dart';
import 'package:platzi_trips_app/star.dart';

// ignore: must_be_immutable
class Review extends StatelessWidget {
  
  String pathImage = "assets/img/viajera.jpg";
  String nameUser = "Varuna Yama";
  String detail = "1 review 5 photos";
  String comment = "There is an amazing place in Sri Lanka";
  double numberStars = 0.0;

  Review(this.pathImage, this.nameUser, this.detail, this.numberStars ,this.comment, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        nameUser,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
        )
      )
    );

    final userInfo = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Row (
        children: <Widget>[
          Text(
            detail,
            textAlign: TextAlign.left,
            style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            color: Color(0xFFa3a5a7)
            )
           ),
           Star(numberStars,10,1)
        ],
      )
    );
  
    final userComment = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          fontWeight:  FontWeight.w900
        )
      )
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
    );

    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            pathImage
          )
        )
      ),
    );
    
    return Row(
      children: <Widget>[
        photo,
        userDetails
        
      ],
    );
  }
}