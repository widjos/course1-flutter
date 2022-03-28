import "package:flutter/material.dart";
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/User/ui/widgets/post.dart';

class PostList extends StatelessWidget {
  String title = "Mountain Stars Range";
  String description = "Hiking Water tall hunting";
  String type = "Scenary & Photography";
  int? likes = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 468,
        child: ListView(
          padding: const EdgeInsets.all(25.0),
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Post(Place(
                name: "Mountain Stars Range",
                description: "Hiking Water tall hunting",
                urlImage: 'assets/img/mio1.jpg',
                likes: 4)),
            Post(Place(
                name: "Mountain Stars Range",
                description: "Hiking Water tall hunting",
                urlImage: 'assets/img/mio2.jpg',
                likes: 5)),
            Post(Place(
                name: "Mountain Stars Range",
                description: "Hiking Water tall hunting",
                urlImage: 'assets/img/mio3.jpg',
                likes: 4)),
            Post(Place(
                name: "Mountain Stars Range",
                description: "Hiking Water tall hunting",
                urlImage: 'assets/img/mio4.jpg',
                likes: 10)),
          ],
        ));
  }
}
