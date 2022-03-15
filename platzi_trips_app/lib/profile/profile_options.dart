import 'package:flutter/material.dart';

class ProfileOption extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    final bloodTypeIcon =   Container(
      margin: const EdgeInsets.only(
        top: 15.0,
        left: 15.0
        ),
      child: const Icon(
        Icons.bloodtype_sharp,
        size: 40.0,
        color: Colors.white,
      ),
      width: 60.0,
      height: 60.0, 
    );

    final alarmIcon =   Container(
      margin: const EdgeInsets.only(
        top: 15.0,
        left: 15.0
        ),
      child: const Icon(
        Icons.access_alarms_rounded,
        size: 40.0,
        color: Colors.white,
      ),
      width: 60.0,
      height: 60.0, 
    );

    final accountIcon =   Container(
      margin: const EdgeInsets.only(
        top: 15.0,
        left: 15.0
        ),
      child: const Icon(
        Icons.account_balance_outlined,
        size: 40.0,
        color: Colors.white,
      ),
      width: 60.0,
      height: 60.0, 
    );

    final garageIcon =   Container(
      margin: const EdgeInsets.only(
        top: 15.0,
        left: 15.0
        ),
      child: const Icon(
        Icons.garage_rounded,
        size: 40.0,
        color: Colors.white,
      ),
      width: 60.0,
      height: 60.0, 
    );

    final addIcon =   Container(
      margin: const EdgeInsets.only(
        top: 10.0,
        left: 15.0
        ),
      child: const Icon(
        Icons.add_circle,
        size: 67.0,
        color: Colors.white,
      ),
      width: 60.0,
      height: 60.0, 
    );

    
    return Container(
      margin: const EdgeInsets.only(
        top: 20.0
      ),
      child: Row(
        children: <Widget>[
          bloodTypeIcon,
          alarmIcon,
          addIcon,
          accountIcon,
          garageIcon

        ],

      ),
    );
  }
}