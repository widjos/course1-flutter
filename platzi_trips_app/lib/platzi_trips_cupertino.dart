import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";
import 'package:platzi_trips_app/home_trip.dart';
import 'package:platzi_trips_app/profile/profile_init.dart';
import 'package:platzi_trips_app/search/search_trips.dart';

class PlatziTripsCupertino extends StatelessWidget {
  const PlatziTripsCupertino({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
             BottomNavigationBarItem(
              icon:  Icon(
                Icons.home,
                color:   Colors.indigo,
                ),
                label: ""
              ),
             BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.indigo,
                ),
                label: ""
              ),
             BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.indigo,
                ),
                label: ""
              ),

          ],
        ), tabBuilder: (BuildContext context, int index) { 
            switch(index) {
              case 0:
                return CupertinoTabView(
                  builder: (BuildContext context) => const HomeTrip()
                );
              case 1:
                return CupertinoTabView(
                  builder: (BuildContext context) => const SearchTrips()
                );
              case 2:
                return CupertinoTabView(
                  builder: (BuildContext context) => const  ProfileInit()
                );
              default: 
                return const HomeTrip();
            }

         },
      ),
    );
  }
}