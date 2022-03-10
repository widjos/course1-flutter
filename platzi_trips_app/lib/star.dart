import 'package:flutter/material.dart';

class Star extends StatelessWidget {

  double numberStars = 0.0;
  double topBorder = 0.0;
  double rightBorder = 0.0;
  late  Widget starHalf;
  late Widget starBorder;
  late Widget star;

  Star(this.numberStars , this.topBorder, this.rightBorder){
      
      starHalf =  Container(
      margin:  EdgeInsets.only(
        top: topBorder,
        right: rightBorder
      ),

      child: const Icon(
        Icons.star_half,
        color: Colors.amber 
      )
    );
    

    starBorder =  Container(
      margin:  EdgeInsets.only(
        top: topBorder,
        right: rightBorder
      ),

      child: const Icon(
        Icons.star_border
      )
    );


    star = Container(
      margin:  EdgeInsets.only(
        top: topBorder,
        right: rightBorder
      ),

      child: const Icon(
        Icons.star,
        color: Colors.amber 
      )
    );


  }

  Widget countStars(double number){

    bool halfStar = number % number.toInt() >= 0.5;
    int fullStar = number <= 5 && number >= 0 ? number.toInt() : 0;    
    return Row(
      children: List.generate(5, (index) =>  
        (fullStar - index) > 0 && index < fullStar ? star : halfStar &&  number  > index  ? starHalf : starBorder
      )

    );
  }

  @override
  Widget build(BuildContext context) {
    return countStars(numberStars);
  }
}