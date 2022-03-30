import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/Place/repository/firebase_storage_repository.dart';
import 'package:platzi_trips_app/Place/ui/widgets/card_image_fab_icon.dart';
import 'package:platzi_trips_app/User/model/user.dart' as user_model;
import 'package:platzi_trips_app/User/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:platzi_trips_app/User/repository/cloud_firestore_api.dart';
import 'package:platzi_trips_app/User/repository/cloud_firestore_repository.dart';
import 'package:platzi_trips_app/User/ui/widgets/post.dart';

class UserBloc implements Bloc {
  final _auth_repository = AutRepository();

  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User?> get authStatus => streamFirebase;
  Future<User?> currentUser() async => FirebaseAuth.instance.currentUser;

  //LogIN usuario google
  Future<UserCredential> signIn() => _auth_repository.signInFireBase();

  //Ingresar nuevo usuario
  final _cloudFirestoreRepository = CloudFirestoreRepository();
  void updateUserData(user_model.User user) => _cloudFirestoreRepository.updateUserDateRepository(user);

  Future<void> updatePlaceData(Place place) =>
      _cloudFirestoreRepository.updatePlaceData(place);

  Stream<QuerySnapshot> placesListStream = FirebaseFirestore.instance.collection(CloudFirestoreAPI.PLACE).snapshots(); 
  Stream<QuerySnapshot> get placeStream => placesListStream;
  List<Post> buildMyPlaces(List<DocumentSnapshot> placesListSnapshot)  => _cloudFirestoreRepository.buildMyPlaces(placesListSnapshot);
  List<CardImageWithFabIcon> buildPlaces(List<DocumentSnapshot> placesListSnapshot) => _cloudFirestoreRepository.buildPlaces(placesListSnapshot);

  Stream<QuerySnapshot> myPlacesListStream(String uid) => 
    FirebaseFirestore.instance.collection(CloudFirestoreAPI.PLACE).where(
      "userOwner" , isEqualTo: FirebaseFirestore.instance.doc(
        "${CloudFirestoreAPI.USERS}/${uid}"
      )
    ).snapshots();


  final _firebaseStorageRepository = FirebaseStorageRepository();
  Future<UploadTask> uploadFile(String path, File image) => _firebaseStorageRepository.uploadFile(path, image);

  singOut() {
    _auth_repository.singOut();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
