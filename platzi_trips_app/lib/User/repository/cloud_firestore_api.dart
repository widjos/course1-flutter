import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/Place/ui/widgets/card_image_fab_icon.dart';
import 'package:platzi_trips_app/User/model/user.dart' as userModel;
import 'package:platzi_trips_app/User/ui/widgets/post.dart';

class CloudFirestoreAPI {
  
  // ignore: constant_identifier_names
  static const String  USERS = "users";
  static const String  PLACE = "places";

  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void updateUserData(userModel.User user) async{
    DocumentReference ref =  _db.collection(USERS).doc(user.uid);

    return ref.set({
      'uid': user.uid,
      'name': user.name,
      'email': user.email,
      'photoURL': user.photoURL,
      'myPlaces': user.myPlace,
      'myFavoritePlaces': user.myFavoritePlaces,
      'lastSignIn': DateTime.now()
    }, SetOptions(merge: true));
  }


  Future<void> updatePlaceData(Place place) async {
    CollectionReference refPlace = _db.collection(PLACE);
    
     User? user =  _auth.currentUser;  
     await refPlace.add(
       {
      'name': place.name,
      'description' : place.description,
      'likes': place.likes,
      'urlImage': place.urlImage,
      'userOwner': _db.doc("${USERS}/${user?.uid}")//reference
   
       }
     ).then((docReference) => docReference.get().then((snapshot) { 
       snapshot.id;
       DocumentReference refUsers = _db.collection(USERS).doc(user?.uid);
       refUsers.update({
         'myPlaces': FieldValue.arrayUnion([_db.doc("${PLACE}/${snapshot.id}")])
       });

       })
       );
  } 

  List<Post> buildMyPlaces(List<DocumentSnapshot> placesListSnapshot){
    List<Post> profilePlaces = List<Post>.empty(growable: true);
    placesListSnapshot.forEach((element) {
      
      profilePlaces.add(Post(Place(
        name: element['name'],
        description: element['description'],
        likes: element['likes'],
        urlImage: element['urlImage']
        )));
    });

    return profilePlaces;
  }

  List<CardImageWithFabIcon> buildPlaces(List<DocumentSnapshot> placesListSnapshot){
    List<CardImageWithFabIcon> placesCard = List<CardImageWithFabIcon>.empty(growable: true);
    const double widthCard = 325.0;
    const double heightCard = 220.0;
    const double leftPadding = 20.0;

    placesListSnapshot.forEach((element) {
       placesCard.add(CardImageWithFabIcon(
         pathImage: element['urlImage'], 
         width: widthCard, 
         height: heightCard, 
         left: leftPadding, 
         onPressedFabIcon: (){
            likePlace(element.id);
         }, 
         iconData: Icons.favorite_border)
         ); 

     });

     return placesCard;

  }


Future likePlace(String idPlace) async {
  await _db.collection(PLACE).doc(idPlace).get()
    .then((docSnapshot){
      int likes = docSnapshot['likes'];

      _db.collection(PLACE).doc(idPlace)
        .update({
          'likes': likes+1
        });
    });
}


}