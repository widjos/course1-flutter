import "package:flutter/material.dart";

class CardPicture extends StatelessWidget {
  String pathPicture = "assets/img/mio1.jpg";

  CardPicture(this.pathPicture, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 260.0,
        width: 380.0,
        decoration: BoxDecoration(
            boxShadow: const <BoxShadow>[
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 7.0))
            ],
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathPicture),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(30.0)),
            shape: BoxShape.rectangle));
  }
}
