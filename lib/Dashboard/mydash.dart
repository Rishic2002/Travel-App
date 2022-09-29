// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, prefer_const_declarations

// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

import 'package:resize/resize.dart';

class MyDashPage extends StatefulWidget {
  const MyDashPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyDashPageState createState() => _MyDashPageState();
}

class _MyDashPageState extends State<MyDashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    animationController.addListener(() {
      setState(() {});
    });
    animationController.forward();
    super.initState();
  }

  //Define CardStyle1
  //Add progress bars to CardStyle1
  //Add icon images to assets
  Material CardStyle1(String string, int value) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: const Color(0x802196F3),
      borderRadius: BorderRadius.circular(24.0),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Icon
              const Icon(Icons.ac_unit_rounded),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                //text and valu
                children: <Widget>[
                  Text("$string FILLED($value%)", style: const TextStyle()),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        width: 70,
                        height: 10,
                        child: LiquidLinearProgressIndicator(
                          borderRadius: 10.0,
                          value: value / 100,
                          center: Text(
                            '${value.toStringAsFixed(0)}%',
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          direction: Axis.horizontal,
                          backgroundColor: Colors.grey.shade300,
                        ),
                      )
                    ],
                  )
                ],
              ))
            ],
          )),
    );
  }

  //Define CardStyle2
  //Add icon images to assets
  Material CardStyle2(String string, int value) {
    return Material(
        color: Colors.white,
        elevation: 14.0,
        shadowColor: Color(0x802196F3),
        borderRadius: BorderRadius.circular(24.0),
        child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //Icon
                  Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.account_balance_sharp)),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //text
                      Text("Water Available $string", style: TextStyle()),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: [
                            Container(
                                width: 50,
                                height: 50,
                                child: LiquidCircularProgressIndicator(
                                  value: 0.25, // Defaults to 0.5.
                                  valueColor: AlwaysStoppedAnimation(Colors
                                      .blue), // Defaults to the current Theme's accentColor.
                                  backgroundColor: Colors
                                      .white, // Defaults to the current Theme's backgroundColor.
                                  borderColor: Colors.blue,
                                  borderWidth: 5.0,
                                  direction: Axis
                                      .horizontal, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                                  center: Text("Loading..."),
                                )),
                          ],
                        ),
                      ])
                ])));
  }

  @override
  Widget build(BuildContext context) {
    return Resize(builder: () {
      return Scaffold(
        backgroundColor: Color.fromARGB(100, 246, 246, 246),
        body: 
        Column(
          
          children: <Widget>[
            SizedBox(
              height: 100,
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "WaterGy Dashboard",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Overview"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Statistics"),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: LayoutBuilder(
              builder: (context, constraints) {
                return Expanded(
                    child: GridView.extent(
                        maxCrossAxisExtent: 200.0,
                        crossAxisSpacing: 20.0,
                        mainAxisSpacing: 20.0,
                        children: <Widget>[
                      CardStyle1("Tank 1A", 35),
                      CardStyle1("Tank 1B", 42),
                      CardStyle1("Tank 2A", 20),
                      CardStyle1("Tank 2B", 25),
                      CardStyle1("Tank 3A", 58),
                      CardStyle1("Tank 3B", 72),
                      CardStyle1("Tank 4A", 89),
                      CardStyle1("Tank 4B", 23),
                      CardStyle1("Tank 5A", 10),
                      CardStyle1("Tank 5B", 10),
                      CardStyle1("Tank 6A", 74),
                      CardStyle1("Tank 6B", 30),
                      CardStyle1("Tank 7A", 41),
                      CardStyle1("Tank 7B", 5),
                      CardStyle1("Tank 8A", 31),
                      CardStyle1("Tank 8B", 65),
                      CardStyle1("Tank 9A", 86),
                      CardStyle1("Tank 9B", 52),
                      // CardStyle1("Water Tank 10A", 12),
                      // CardStyle1("Water Tank 10B", 100),
                    ]));
              },
            ))
          ],
        ),
       
      );
    });
  }
}
