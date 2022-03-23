import 'package:flutter/cupertino.dart';
import 'package:platzi_trips_app/Place/ui/widgets/review.dart';

class ReviewList  extends StatelessWidget {
  


  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review('assets/img/persona2.jpg', 'Romane Luz', '1 reviews 10 photos', 3.5 ,'es un hermoso lugar'),
        Review('assets/img/viajera.jpg', 'Romane Luz', '1 reviews 10 photos', 4.0,'es un hermoso lugar'),
        Review('assets/img/persona3.jpg', 'Romane Luz', '1 reviews 10 photos',1.5 ,'es un hermoso lugar')
      ],
    );
  }
}