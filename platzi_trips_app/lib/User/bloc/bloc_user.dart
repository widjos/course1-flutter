import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserBloc implements Bloc {
  
  final _auth_repository = AutRepository();

  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User?> get  authStatus => streamFirebase;


  Future<UserCredential> signIn(){
    return _auth_repository.signInFireBase();
  }


  singOut(){
    _auth_repository.singOut();
  }  

  @override
  void dispose() {
    // TODO: implement dispose
  }


}