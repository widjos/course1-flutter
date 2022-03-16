import "package:flutter/material.dart";
import 'package:platzi_trips_app/profile/post.dart';

class PostList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 468,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Post('assets/img/mio1.jpg'),
          Post('assets/img/mio2.jpg'),
          Post('assets/img/mio3.jpg'),
          Post('assets/img/mio4.jpg'),
        ],
      )
    );
  }
}