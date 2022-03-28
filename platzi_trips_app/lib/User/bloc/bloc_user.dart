import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/model/user.dart' as user_model;
import 'package:platzi_trips_app/User/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:platzi_trips_app/User/repository/cloud_firestore_api.dart';
import 'package:platzi_trips_app/User/repository/cloud_firestore_repository.dart';

class UserBloc implements Bloc {
  
  final _auth_repository = AutRepository();

  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User?> get  authStatus => streamFirebase;

  //LogIN usuario google
  Future<UserCredential> signIn(){
    return _auth_repository.signInFireBase();
  }

  //Ingresar nuevo usuario 
  final _cloudFirestoreRepository = CloudFirestoreRepository();
  void updateUserData(user_model.User user) => _cloudFirestoreRepository.updateUserDateRepository(user);

  singOut(){
    _auth_repository.singOut();
  }  

  @override
  void dispose() {
    // TODO: implement dispose
  }


}