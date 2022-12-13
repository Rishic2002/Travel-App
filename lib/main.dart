// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import 'HomeScreen/HomeScreen.dart';
import 'Cities/Controller/pagecontroller.dart';

void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'timesBold'),
      home: const PageControl(),
    );
  }
}
