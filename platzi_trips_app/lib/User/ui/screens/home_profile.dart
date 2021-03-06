import 'package:flutter/material.dart';
import 'package:platzi_trips_app/User/model/user.dart';
import 'package:platzi_trips_app/widgets/gradient_back.dart';
import 'package:platzi_trips_app/User/ui/widgets/profile_description.dart';
import 'package:platzi_trips_app/User/ui/widgets/profile_options.dart';

class HomeProfile extends StatelessWidget {

  User user;
  HomeProfile({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack(tittle: "Profile", heightNab: 300.0),
        Column(
          children: [ProfileDescription(user: user), ProfileOption()],
        )
      ],
    );
  }
}
