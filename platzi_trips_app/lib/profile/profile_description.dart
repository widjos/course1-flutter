import "package:flutter/material.dart";

class ProfileDescription extends StatelessWidget {

  
  String  pathImage = 'assets/img/viajero.jpg';
  String strUserName = "Rosalia Soledad";
  String strUserEmail = "rosalia@gmail.com";  
  
    

  @override
  Widget build(BuildContext context) {

    final photo = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.white),
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            pathImage
          )
        )
      ),
  );

final userName = Container(
      margin: const EdgeInsets.only(
        top: 13.0,
        left: 20.0
      ),
      child: Text(
        strUserName,
        textAlign: TextAlign.left,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: "Lato",
          fontSize: 20.0
        )
      )
    );

    final userEmail = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Row (
        children: <Widget>[
          Text(
            strUserEmail,
            textAlign: TextAlign.left,
            style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 17.0,
            color: Color.fromARGB(255, 193, 195, 197)
            )
           )
        ],
      )
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userEmail
      ],
    );



    return Container(
      margin: const EdgeInsets.only(
        top: 115.0
      ),
      child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        photo,
        userDetails
        ],
      )
    );
  }
}