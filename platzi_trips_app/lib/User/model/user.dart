import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/model/place.dart';

class User {
  final String uid;
  final String name;
  final String email;
  final String photoURL;
  final List<Place>? myPlace;
  final List<Place>? myFavoritePlaces;

  User(
      {
      this.uid = 'asss' ,
      required this.name,
      required this.email,
      required this.photoURL,
      this.myPlace,
      this.myFavoritePlaces });
}
