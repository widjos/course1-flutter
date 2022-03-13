import "package:flutter/material.dart";

class Header extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromARGB(255, 17, 127, 155),
            Color.fromARGB(255, 10, 79, 136)
          ],
          begin: FractionalOffset(0.2, 0.1),
          end: FractionalOffset(1.0, 0.8),
          stops: [0.12,0.8],
          tileMode: TileMode.clamp
        ),
        boxShadow: [BoxShadow(
          color: Color.fromARGB(255, 12, 44, 100),
          offset: Offset(0.0, 10.0)
          )
        ]
      ),
      child: const Text(
        'DPS TIER LIST',
        style:  TextStyle(
          color: Colors.white,
          fontSize: 35,
          fontFamily: 'SuezOne'
        ),
      ),
      alignment: const Alignment(-0.8, -0.2),

    );
  }
}