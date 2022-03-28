import "package:flutter/material.dart";
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';
import 'package:platzi_trips_app/User/model/user.dart';
import 'package:platzi_trips_app/User/ui/widgets/profile_detail.dart';

// ignore: must_be_immutable
class ProfileDescription extends StatelessWidget {
  late User user;
  late UserBloc userBloc;

  Widget showProfileData(AsyncSnapshot snapshot) {
    if (!snapshot.hasData || snapshot.hasError) {
      print("No logeado");
      return Container(
          margin: const EdgeInsets.only(top: 115.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              CircularProgressIndicator(),
              Text('No se pudo cargar la informacin')
            ],
          ));
    } else {
      print(snapshot.data);
      user =  User(
        name: snapshot.data.displayName, 
        email: snapshot.data.email,
        photoURL:  snapshot.data.photoURL
        );
      return Container(
          margin: const EdgeInsets.only(top:20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[ProfileDetail(user)],
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);

    return StreamBuilder(
        stream: userBloc.streamFirebase,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
            case ConnectionState.none:
              return const CircularProgressIndicator();
            case ConnectionState.active:
            case ConnectionState.done:
              return showProfileData(snapshot);
          }
        });
  }
}
