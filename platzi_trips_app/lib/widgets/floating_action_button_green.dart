import 'package:flutter/material.dart';

class FloatringActionButtonGreen extends StatefulWidget {

  final IconData iconData;
  final VoidCallback onPressed;

  FloatringActionButtonGreen({ Key? key , required this.iconData, required this.onPressed  }) : super(key: key);

  @override
  State<FloatringActionButtonGreen> createState() => _FloatringActionButtonGreenState();
}

class _FloatringActionButtonGreenState extends State<FloatringActionButtonGreen> {
  
  bool favorite = false;
  /*
  void onPressedFav(){
    const snackBar = SnackBar(
    content: Text('Yay! Favorito!'),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    
    setState(() {
      favorite ? favorite = false : favorite = true;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: "Nav",
      onPressed: widget.onPressed,
      child:  Icon(
        widget.iconData
       //favorite  ? Icons.favorite : Icons.favorite_border 
      ),
      heroTag: null
    );
  }
}