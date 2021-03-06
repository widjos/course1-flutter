import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:platzi_trips_app/User/model/user.dart' as user_model;
import 'package:platzi_trips_app/platzi_trips_cupertino.dart';
import 'package:platzi_trips_app/widgets/button_green.dart';
import 'package:platzi_trips_app/widgets/gradient_back.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData || snapshot.hasError) {
          return signInGoogleUI();
        } else {
          return PlatziTripsCupertino();
        }
      },
    );
  }

  Widget signInGoogleUI() {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        GradientBack(tittle: ''),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              ' Welcome\n This is your Travel App',
              style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 37.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            ButtonGreen(
                'Login with Gmail',
                () => {
                      userBloc.signIn().then((UserCredential? user) {
                        userBloc.updateUserData(user_model.User(
                            uid: (user?.user!.uid).toString(),
                            name: (user?.user!.displayName).toString(),
                            email: (user?.user!.email).toString(),
                            photoURL: (user?.user!.photoURL).toString()));
                      })
                    },
                300.0,
                50.0)
          ],
        )
      ],
    ));
  }
}
