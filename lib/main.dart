import 'package:flutter/material.dart';
import 'package:test/Dashboard/mydash.dart';
import 'package:test/Login/login.dart';
import 'package:test/Login/register.dart';
import 'LandingPage/LandingPage.dart';
import '/Navbar/Navbar.dart';
import 'Dashboard/mydash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        "/login": (BuildContext context) => Login(),
        "/dash": (BuildContext context) => const MyDashPage(),
        "/regis": (BuildContext context) => Register(),
      },
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
            children: const <Widget>[
              Navbar(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 200, horizontal: 50),
                child: LandingPage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
