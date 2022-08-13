import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WaterGy Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    animationController.addListener(() {
      setState(() {});
    });

    animationController.forward();
    super.initState();
  }

  //Image for Style1
  NetworkImage icon1 = const NetworkImage(
      "https://www.kindpng.com/picc/m/26-268939_water-drop-icon-png-water-drop-symbol-png.png");
  //Image for Style2
  NetworkImage icon2 = const NetworkImage("");

  //Define CardStyle1
  //Add progress bars to CardStyle1
  //Add icon images to assets
  Material CardStyle1(String string, int value) {
    final percentage = 60;
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
                mainAxisAlignment: MainAxisAlignment.center,
                //text and value
                children: <Widget>[
                  Text("$string Filled ($value %)", style: const TextStyle()),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      Container(
                        child: LiquidLinearProgressIndicator(
                          borderRadius: 10.0,
                          value: percentage / 100,
                          center: Text(
                            '${percentage.toStringAsFixed(0)}%',
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
              )
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
        shadowColor: const Color(0x802196F3),
        borderRadius: BorderRadius.circular(24.0),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Icon
              const Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(Icons.account_balance_sharp)),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //text
                  Text("Water Available $string", style: const TextStyle()),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //text
                  Text("$value liters", style: const TextStyle()),
                ],
              ),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(100, 246, 246, 246),
      body: StaggeredGrid.count(
        crossAxisCount: 6,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        children: <Widget>[
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CardStyle1("Water Tank 1A", 35)),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CardStyle1("Water Tank 1B", 42)),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CardStyle1("Water Tank 2A", 20)),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CardStyle1("Water Tank 2B", 25)),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CardStyle1("Water Tank 3A", 58)),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CardStyle1("Water Tank 3B", 72)),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CardStyle1("Water Tank 4A", 89)),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CardStyle1("Water Tank 4B", 23)),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CardStyle1("Water Tank 5A", 10)),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CardStyle1("Water Tank 5B", 0)),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CardStyle1("Water Tank 6A", 74)),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CardStyle1("Water Tank 6B", 30)),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CardStyle1("Water Tank 7A", 41)),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CardStyle1("Water Tank 7B", 5)),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CardStyle1("Water Tank 8A", 31)),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CardStyle1("Water Tank 8B", 65)),
          // StaggeredGridTile.count(
          //     crossAxisCellCount: 1,
          //     mainAxisCellCount: 1,
          //     child: CardStyle1("Water Tank 9A", 86)),
          // StaggeredGridTile.count(
          //     crossAxisCellCount: 1,
          //     mainAxisCellCount: 1,
          //     child: CardStyle1("Water Tank 9B", 52)),
          // StaggeredGridTile.count(
          //     crossAxisCellCount: 1,
          //     mainAxisCellCount: 1,
          //     child: CardStyle1("Water Tank 10A", 12)),
          // StaggeredGridTile.count(
          //     crossAxisCellCount: 1,
          //     mainAxisCellCount: 1,
          //     child: CardStyle1("Water Tank 10B", 100)),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CardStyle2("Block A", 2364)),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CardStyle2("Block B", 1250))
          // CardStyle1("Water Tank 1A", 35),
          // CardStyle1("Water Tank 1B", 42),
          // CardStyle1("Water Tank 2A", 20),
          // CardStyle1("Water Tank 2B", 25),
          // CardStyle1("Water Tank 3A", 58),
          // CardStyle1("Water Tank 3B", 72),
          // CardStyle1("Water Tank 4A", 89),
          // CardStyle1("Water Tank 4B", 23),
          // CardStyle1("Water Tank 5A", 10),
          // CardStyle1("Water Tank 5B", 0),
          // CardStyle2("Block A", 2364),
          // CardStyle2("Block B", 1250),
        ],
      ),
    );
  }
}
