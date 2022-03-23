import 'package:flutter/material.dart';
import 'package:platzi_trips_app/widgets/button_green.dart';
import 'package:platzi_trips_app/widgets/gradient_back.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({ Key? key }) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack("", MediaQuery.of(context).size.height),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  <Widget>[
              const Text(
                ' Welcome\n This is your Travel App',
                style:   TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 37.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),    
              ),
              ButtonGreen('Login with Gmail',()=>{}, 300.0, 50.0)
            ],
          )
        ],
      )
    );


  }


}