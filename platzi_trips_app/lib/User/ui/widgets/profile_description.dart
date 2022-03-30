
import "package:flutter/material.dart";
import 'package:platzi_trips_app/User/model/user.dart';
import 'package:platzi_trips_app/User/ui/widgets/profile_detail.dart';

// ignore: must_be_immutable
class ProfileDescription extends StatelessWidget {
  late User user;
  
  ProfileDescription({required this.user});

  @override
  Widget build(BuildContext context) {

    return Container(
          margin: const EdgeInsets.only(top:20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[ProfileDetail(user)],
          ));
  }
}
