import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  Scaffold(
        appBar: AppBar(
          title: const Text("Reto 2"),
          backgroundColor: Color.fromARGB(255, 13, 78, 131),
        ),
        body : Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image : const DecorationImage(
                  image : NetworkImage(
                    "https://wallpapercave.com/wp/wp5539418.jpg"
                  ),
                  fit: BoxFit.cover
                )
              ),
            ),
            Container(
              child: Center(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                  color: Color.fromARGB(111, 163, 214, 221)
                  ),
                  child: Center(
                    child : Text(
                      "oh It's cold here",
                      style: TextStyle( 
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.blue[900]
                        ),
                      )
                  )
                ),
              ),
            ),
          ],
        )
      )
    );
  }
}

