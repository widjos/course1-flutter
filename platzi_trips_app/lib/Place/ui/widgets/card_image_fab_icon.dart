import 'package:flutter/material.dart';
import 'package:platzi_trips_app/widgets/floating_action_button_green.dart';

class CardImageWithFabIcon extends StatelessWidget {

  final double height;
  final double width;
  final double left;
  String pathImage = "assets/img/pa4.jpg";
  VoidCallback onPressedFabIcon;
  final IconData iconData;

  CardImageWithFabIcon({
    required this.pathImage,
    required this.width,
    required this.height,
    required this.left,
    required this.onPressedFabIcon,
    required this.iconData

     
  });

  @override
  Widget build(BuildContext context) {
    
    final card = Container(
      height: height,
      width: width,
      margin:  EdgeInsets.only(
        left: left
      ),
      decoration:  BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ),
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      shape: BoxShape.rectangle,
      boxShadow: const <BoxShadow>[
        BoxShadow(
          color: Colors.black38,
          blurRadius: 15.0,
          offset: Offset(0.0,7.0)
        )
      ]
      )
    );
    
    return Stack(
      alignment: const Alignment(0.9,1.1),
      children: <Widget>[
        card,
        FloatringActionButtonGreen(iconData: iconData, onPressed: (){},)
      ],
    );
  }
}