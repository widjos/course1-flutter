import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/Place/ui/widgets/card_image_fab_icon.dart';
import 'package:platzi_trips_app/User/model/user.dart';
import 'package:platzi_trips_app/User/repository/cloud_firestore_api.dart';
import 'package:platzi_trips_app/User/ui/widgets/post.dart';

class CloudFirestoreRepository {
  
  final _cloudFirestoreAPI =   CloudFirestoreAPI(); 

  void updateUserDateRepository(User user) => _cloudFirestoreAPI.updateUserData(user);

  Future<void> updatePlaceData(Place place) => _cloudFirestoreAPI.updatePlaceData(place);

  List<Post> buildMyPlaces(List<DocumentSnapshot> placesListSnapshot) => _cloudFirestoreAPI.buildMyPlaces(placesListSnapshot);
  List<CardImageWithFabIcon> buildPlaces(List<DocumentSnapshot> placesListSnapshot) => _cloudFirestoreAPI.buildPlaces(placesListSnapshot);

}