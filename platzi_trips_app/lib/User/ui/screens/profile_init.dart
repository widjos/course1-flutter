import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';
import 'package:platzi_trips_app/User/model/user.dart';
import 'package:platzi_trips_app/User/ui/screens/home_profile.dart';
import 'package:platzi_trips_app/User/ui/widgets/posts_list.dart';

class ProfileInit extends StatelessWidget {

  UserBloc? userbloc;
  ProfileInit({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    userbloc = BlocProvider.of<UserBloc>(context);

    
    return StreamBuilder(
      stream: userbloc!.authStatus,
      builder:  (BuildContext context, AsyncSnapshot snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.waiting:
            case ConnectionState.none:
              return  const CircularProgressIndicator();
            case ConnectionState.active:
            case ConnectionState.done:           
              return showProfileData(snapshot);
          }
        }
      );
    

  }

  Widget showProfileData(AsyncSnapshot snapshot){
    if(!snapshot.hasData || snapshot.hasError){
      log("User no logueado");
      return Stack(
        children: [
          ListView(
            children: const[
              Text("Usuario no loggeado. Haz login")
            ],
          )
        ],
      );
    }else{
      log("-> Usuario loggeado");
      var user = User(
          uid: snapshot.data.uid,
          name: snapshot.data.displayName,
          email: snapshot.data.email,
          photoURL: snapshot.data.photoURL
          );

        return ListView(
      children: <Widget>[
        HomeProfile(user: user),
        PostList(user: user)
      ],
    );
    }

  }
}

/** */