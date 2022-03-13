import "package:flutter/material.dart";

class ElementMine extends StatelessWidget {

  String pathImage = "asset/img/ganyu.png";
  String name = "Ejemplo";
  String typeUser = "polearm";
  String constellation = "C0";
  String dirPhotoElement = "assets/img/cryo.png";
  String tierList  = "SS";

  ElementMine(this.pathImage, this.name, this.typeUser,this.dirPhotoElement,this.constellation , this.tierList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "SuezOne",
          fontSize: 18.0
        )
      )
    );

    final userType = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        typeUser,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "SuezOne",
          fontSize: 14.0,
          color: Color(0xFFa3a5a7)
        )
      )
    );

    final photoElement = Container(
      alignment: Alignment.center,
      width: 25.0,
      height: 25.0,
      margin: const EdgeInsets.only(
        top: 15.0,
        left: 78.0,        
      ),
      decoration:  BoxDecoration(
        color: const Color.fromARGB(255, 10, 79, 136),
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            dirPhotoElement
          )
        )
      )


    );

    final photoTier = Container(
      alignment: Alignment.center,
      width: 25.0,
      height: 25.0,
      decoration: const BoxDecoration(
        borderRadius:  BorderRadius.all(Radius.circular(6.0)),
        color: Color.fromARGB(255, 10, 79, 136),
      ),
      margin: const EdgeInsets.only(
        top: 75.0,
        left: 75.0
      ),
      child: Text(
        constellation,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.w800,
          fontFamily: "SuezOne",
          fontSize: 18.0,
          color: Color.fromARGB(255, 248, 248, 240),
        )
      ),
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
  
    final photoLevel = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 10.0,
        right: 20.0
      ),
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
             tierList == "SS" ? "assets/img/SS.png" : "assets/img/S.png"
          )
        )
      ),
    );
  

    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      padding: const EdgeInsets.only(
        bottom: 10.0
      ),
      child: Row(
      children: <Widget>[  
        Stack(
          children: <Widget>[
            photo,
            photoElement,
            photoTier
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            userName,
            userType
          ],
        ),  
        const Spacer(), 
        photoLevel
      ],
      
    )
      
    );
  }
}