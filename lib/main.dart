import 'package:flutter/material.dart';
import 'LandingPage/LandingPage.dart';
import '/Navbar/Navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/back.png"),
              fit: BoxFit.fitHeight),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Navbar(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 200, horizontal: 50),
                child: LandingPage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
