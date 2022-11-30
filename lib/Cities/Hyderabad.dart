import 'package:flutter/material.dart';

import '../HomeScreen.dart';

class Hyderabad extends StatelessWidget {
  const Hyderabad({super.key});

  @override
 Widget build(BuildContext context) {
   return MaterialApp(
        home: Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "/Users/rishic2002/Desktop/DESKTOP/Apps/test2/assets/Hyderabad.jpg"),
            fit: BoxFit.fitHeight,
          ),
        ))));
  }
}