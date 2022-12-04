import 'package:flutter/material.dart';
import 'package:test2/Cities/Chennai/Chennai.dart';
import 'package:test2/Cities/Delhi/Delhi.dart';
import 'package:test2/Cities/Mumbai/Mumbai.dart';
import 'package:test2/HomeScreen/HomeScreen.dart';
import 'package:test2/Cities/Hyderabad/Hyderabad.dart';
import 'package:test2/Cities/Jaipur/Jaipur.dart';
import 'package:test2/Cities/Kolkata/Kolkata.dart';
import 'package:test2/Cities/Lucknow/Lucknow.dart';


class PageControl extends StatelessWidget {

  const PageControl({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      pageSnapping: true,
      scrollDirection: Axis.vertical,
      controller: controller,
      children: const <Widget>[
        Center(
          child: HomeScreen(),
        ),
        Center(
          child: Delhi(),
        ),
        Center(
          child: Lucknow(),
        ),
        Center(
          child: Chennai(),
        ),
        Center(
          child:Hyderabad(),
        ),
        Center(
          child:Kolkata(),
        ),
         Center(
          child:Mumbai(),
        ),
         Center(
          child:Jaipur(),
        ),
      ],
    );
  }
}
