import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:platzi_trips_app/User/ui/screens/sign_in_screen.dart';
import 'package:platzi_trips_app/platzi_trips.dart';
import 'package:platzi_trips_app/platzi_trips_cupertino.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark, // dark text for status bar
      statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

      
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: const MaterialApp(
        title: 'Flutter Demo',
        home: SignInScreen() //PlatziTripsCupertino()
      ),
      bloc: UserBloc()
      );
  }
}
