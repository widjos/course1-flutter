import 'package:flutter/cupertino.dart';
import "package:platzi_trips_app/review.dart";

class ReviewList  extends StatelessWidget {
  


  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review('assets/img/persona2.jpg', 'Romane Luz', '1 reviews 10 photos', 'es un hermoso lugar'),
        Review('assets/img/persona3.jpg', 'Rosenberg Sole', '5 reviews 3 photos', 'es un hermoso lugar'),
        Review('assets/img/viajera.jpg', 'Anne Roust', '2 reviews 2 photos', 'es un hermoso lugar')

      ],
    );
  }
}