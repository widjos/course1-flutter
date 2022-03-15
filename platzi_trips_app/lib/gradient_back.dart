import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {

  String tittle = "Popular";
  double heightNab = 250.0; 
  
  GradientBack(this.tittle, this.heightNab);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightNab,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(251, 209, 25, 1),
            Color.fromARGB(255, 235, 105, 29)
          ],
        begin: FractionalOffset(0.2, 0.0),
        end: FractionalOffset(1.0, 0.6),
        stops: [0.0, 0.6,],
        tileMode: TileMode.clamp 
        )
      ),
      child: Text(
        tittle,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold
        )
      ),
      alignment: const Alignment(-0.9,-0.6),

    );
  }
}