import 'package:flutter/material.dart';
import 'package:platzi_trips_app/widgets/gradient_back.dart';
import 'package:platzi_trips_app/User/ui/widgets/profile_description.dart';
import 'package:platzi_trips_app/User/ui/widgets/profile_options.dart';

class HomeProfile extends StatelessWidget {
  const HomeProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack(tittle: "Profile", heightNab: 300.0),
        Column(
          children: [ProfileDescription(), ProfileOption()],
        )
      ],
    );
  }
}
