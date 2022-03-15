import 'package:flutter/material.dart';
import 'package:platzi_trips_app/home_trip.dart';
import 'package:platzi_trips_app/profile/profile_init.dart';
import 'package:platzi_trips_app/search/search_trips.dart';

class PlatziTrips extends StatefulWidget {
  const PlatziTrips({ Key? key }) : super(key: key);

  @override
  State<PlatziTrips> createState() => _PlatziTripsState();
}

class _PlatziTripsState extends State<PlatziTrips> {

  int indexTab = 0;
  final List<Widget> widgetChildren = [
    HomeTrip(),
    SearchTrips(),
    ProfileInit()
  ];

  void onTapTapped(int index){
    setState(() {
      indexTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetChildren[
        indexTab
      ],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTab,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ]
        )
      ),
    );
  }
}