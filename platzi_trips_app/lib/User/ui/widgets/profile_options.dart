import 'dart:io';

import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/Place/ui/screens/add_place_screen.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';
import 'package:platzi_trips_app/widgets/button_icon.dart';

// ignore: must_be_immutable
class ProfileOption extends StatelessWidget {
 late UserBloc userBloc;

  @override
  Widget build(BuildContext context) {

    userBloc = BlocProvider.of(context);
    return Padding(
      padding:const  EdgeInsets.symmetric(
            horizontal: 0.0,
            vertical: 10.0
        ),
      child: Row(
        children: [
          ButtonIcon( true, Icons.vpn_key, 20.0, const Color.fromRGBO(255,255, 255, 0.6), ()=>{}),
          ButtonIcon( false, Icons.add, 20.0, const Color.fromRGBO(255,255, 255, 0.1), (){ 
            Navigator.push(context,
            MaterialPageRoute(builder:(BuildContext context) => AddPlaceScreen()));
            }),
          ButtonIcon( true, Icons.exit_to_app, 20.0, const Color.fromRGBO(255,255, 255, 0.6), () => userBloc.singOut())
        
        ],

      ),
    );
  }
}