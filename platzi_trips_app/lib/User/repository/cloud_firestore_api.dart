import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/User/model/user.dart' as userModel;

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
      'userOwner': "${USERS}/${user?.uid}"//reference
   
       }
     );
  } 
}