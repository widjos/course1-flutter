import 'package:flutter/material.dart';

class TittleHeader extends StatelessWidget {

  String tittle;
  TittleHeader({ Key? key ,required this.tittle}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Text(
          tittle,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: "Lato",
            fontSize: 30.0,
            fontWeight:  FontWeight.bold
        ) 
     );
  }
}