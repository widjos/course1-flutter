import 'package:flutter/material.dart';
import 'package:platzi_trips_app/User/ui/screens/home_profile.dart';
import 'package:platzi_trips_app/User/ui/widgets/posts_list.dart';

class ProfileInit extends StatelessWidget {
  const ProfileInit({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const HomeProfile(),
        PostList()
      ],
    );
    

  }
}