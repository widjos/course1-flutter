import "package:flutter/material.dart";

class Button extends StatelessWidget {
  
  String buttonText = "Navigate";

  Button(this.buttonText);

  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap:  () => Scaffold.of(context).showSnackBar(
       const SnackBar(content: Text("Navegando"))
      ),

      child: Container(
        margin: const EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0
        ),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: const LinearGradient(
            colors:  [
              Color.fromARGB(251, 209, 25, 1),
              Color.fromARGB(255, 235, 105, 29)
            ],
            begin: FractionalOffset(0.2,0.0),
            end: FractionalOffset(1.2,0.8),
            stops: [0.1,0.8],
            tileMode: TileMode.clamp
          )
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 18.0,
              fontFamily: "Lato",
              color: Colors.white
            )
          ),
        ),
      )
      
    );
  }
}