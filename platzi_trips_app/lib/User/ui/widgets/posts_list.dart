import "package:flutter/material.dart";
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';
import 'package:platzi_trips_app/User/model/user.dart';

class PostList extends StatelessWidget {
  String title = "Mountain Stars Range";
  String description = "Hiking Water tall hunting";
  String type = "Scenary & Photography";
  int? likes = 0;
  UserBloc? userBloc;
  User user;

  PostList({required this.user});

  @override
  Widget build(BuildContext context) {

    userBloc = BlocProvider.of<UserBloc>(context);
    return Container(
        height: 468,
        child: StreamBuilder(
          stream: userBloc!.myPlacesListStream(user.uid),
          builder: (context, AsyncSnapshot snapshot){
            switch(snapshot.connectionState){
              case ConnectionState.waiting:
              case ConnectionState.none:
                return const CircularProgressIndicator();
              case ConnectionState.done:
              case ConnectionState.active:
                return ListView(
                    padding: const EdgeInsets.all(25.0),
                    scrollDirection: Axis.vertical,
                    children: userBloc!.buildMyPlaces(snapshot.data.docs)
                    );


            }
          },
        )
        
        );
  }
}
