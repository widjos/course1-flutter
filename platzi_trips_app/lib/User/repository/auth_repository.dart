import 'package:firebase_auth/firebase_auth.dart';
import 'package:platzi_trips_app/User/repository/firebase_auth_api.dart';


class AutRepository {
  final _firebaseAuthAPI = FirebaseAuthAPI();

  Future<UserCredential> signInFireBase() => _firebaseAuthAPI.sigInGoogle(); 

  singOut() => _firebaseAuthAPI.singOut();

}