// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';

import 'package:test2/Data.dart';
import 'dart:ui';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController pageController;
  double pageOffset = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.7);
    pageController.addListener(() {
      setState(() {
        pageOffset = pageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "/Users/rishic2002/Desktop/DESKTOP/Apps/test2/assets/india.jpg"),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 30),
                  Text(
                    'INDIA',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(height: 10),
                  Text(
                    'A unique land of vibrant colours, breathtaking landscapes and rich history, India is unlike any other. From the writhing streets of Mumbai to the idyllic shores of the Andaman Islands, this remarkable country offers a diverse feast for the senses.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 20),
                  child: Text(
                    'Places To Visit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                    height: 400,
                    padding: const EdgeInsets.only(bottom: 30),
                    child: PageView.builder(
                        itemCount: paintings.length,
                        controller: pageController,
                         scrollDirection: Axis.horizontal
                    ,
                        itemBuilder: (context, i) {
                          return Transform.scale(
                            scale: 1,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => route[i]));
                              },

                              // ignore: prefer_const_constructors

                              child: Container(
                                padding: const EdgeInsets.only(right: 20,top: 20),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.asset(
                                        paintings[i]['image'],
                                        height: 370,
                                        width: 370,
                                        fit: BoxFit.fill,
                                        alignment:
                                            Alignment(-pageOffset.abs() + i, 0),
                                      ),
                                    ),
                                    Positioned(
                                      left: 10,
                                      bottom: 20,
                                      right: 10,
                                      child: Text(
                                        paintings[i]['name'],
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 35,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }))
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
