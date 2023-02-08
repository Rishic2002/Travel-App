import 'package:flutter/material.dart';
import 'package:travel_app/screens/home_screen.dart';
import 'package:travel_app/screens/selected_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
