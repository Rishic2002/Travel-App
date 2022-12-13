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
        Hero(tag: 1, child: HomeScreen()),
         Hero(tag: 2, child: Delhi()),
          Hero(tag: 3, child: Lucknow()),
           Hero(tag: 4, child: Chennai()),
            Hero(tag: 5, child: Hyderabad()),
             Hero(tag: 5, child: Kolkata()),
              Hero(tag: 5, child:  Mumbai()),
              Hero(tag: 5, child:  Jaipur()),


        
       
      ],
    );
  }
}
