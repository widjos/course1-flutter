import 'package:flutter/material.dart';

class Star extends StatelessWidget {

  double numberStars = 0;

  Star(this.numberStars);

  final star_half =  Container(
      margin: const EdgeInsets.only(
        top: 303.0,
        right: 3.0
      ),

      child: const Icon(
        Icons.star_half,
        color: Colors.amber 
      )
    );

    final star_border =  Container(
      margin: const EdgeInsets.only(
        top: 303.0,
        right: 3.0
      ),

      child: const Icon(
        Icons.star_border
      )
    );


    final star = Container(
      margin: const EdgeInsets.only(
        top: 303.0,
        right: 3.0
      ),

      child: const Icon(
        Icons.star,
        color: Colors.amber 
      )
    );

  Widget countStars(double number){

    bool halfStar = number % number.toInt() >= 0.5;
    int fullStar = number <= 5 && number >= 0 ? number.toInt() : 0;    
    return Row(
      children: List.generate(5, (index) =>  
        (fullStar - index) > 0 && index < fullStar ? star : halfStar &&  number  > index  ? star_half : star_border
      )

    );
  }

  @override
  Widget build(BuildContext context) {
    return countStars(numberStars);
  }
}