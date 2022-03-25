import 'package:flutter/material.dart';
import 'package:platzi_trips_app/User/model/user.dart';

class ProfileDetail extends StatelessWidget {
  User user;
  ProfileDetail(this.user);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: const EdgeInsets.only(left: 20.0),
      width: 85.0,
      height: 85.0,
      decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.white),
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.fill, image: NetworkImage(user.photoURL))),
    );

    final userName = Container(
        margin: const EdgeInsets.only(top: 13.0, left: 20.0),
        child: Text(user.name,
            textAlign: TextAlign.left,
            style: const TextStyle(
                color: Colors.white, fontFamily: "Lato", fontSize: 15.0)));

    final userEmail = Container(
        margin: const EdgeInsets.only(left: 20.0),
        child: Row(
          children: <Widget>[
            Text(user.email,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    fontFamily: "Lato",
                    fontSize: 12.0,
                    color: Color.fromARGB(255, 193, 195, 197)))
          ],
        ));

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userEmail],
    );

    return Container(
        margin: const EdgeInsets.only(top: 115.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[photo, userDetails],
        ));
  }
}
