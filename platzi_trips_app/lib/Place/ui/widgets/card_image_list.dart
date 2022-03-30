import "package:flutter/material.dart";
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';
import 'card_image_fab_icon.dart';

class CardImageList extends StatelessWidget {

  UserBloc? userBloc;


  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);
    return Container(
        height: 300.0,
        child: StreamBuilder(
          stream: userBloc!.placeStream,
          builder: (context, AsyncSnapshot snaphot ){
            switch(snaphot.connectionState){
              case ConnectionState.waiting:
              case ConnectionState.none:
                return const CircularProgressIndicator();
              case ConnectionState.done:
              case ConnectionState.active:
                return listViewPlaces(userBloc!.buildPlaces(snaphot.data.docs));
              }
            },
          )
        );
  }

  Widget listViewPlaces(List<CardImageWithFabIcon> placesCard){
    return ListView(
          padding: const EdgeInsets.all(25.0),
          scrollDirection: Axis.horizontal,
          children: placesCard
          
        );
  }

}

