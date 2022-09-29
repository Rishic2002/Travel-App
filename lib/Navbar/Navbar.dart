// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return const MobileNavbar();
        }
      },
    );
  }
}

// ignore: use_key_in_widget_constructors
class DesktopNavbar extends StatelessWidget {
  List<String> items = [
    'ONE',
    'TWO',
    'THREE',
    'FOUR',
    'FIVE',
  ];
  String dropdownValue = 'Red';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text(
            "AquaNet",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
          ),
          Row(
            children: <Widget>[
              MaterialButton(
                color: (Colors.white),
                onPressed: () {
                  // Navigator.of(context).pushNamed("/login");
                },
                child: DropdownButton<String>(
                  value: dropdownValue,
                  items: items.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value, child: Text(value));
                  }).toList(),
                  onChanged: (String? newValue) {},
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              MaterialButton(
                color: (Colors.white),
                onPressed: () {
                  //  Navigator.of(context).pushNamed("/login");
                },
                child: DropdownButton<String>(
                  value: dropdownValue,
                  items: items.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value, child: Text(value));
                  }).toList(),
                  onChanged: (String? newValue) {},
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              MaterialButton(
                color: (Colors.white),
                onPressed: () {
                  // Navigator.of(context).pushNamed("/login");
                },
                child: DropdownButton<String>(
                  value: dropdownValue,
                  items: items.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value, child: Text(value));
                  }).toList(),
                  onChanged: (String? newValue) {},
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              MaterialButton(
                color: (Colors.white),
                onPressed: () {
                  Navigator.of(context).pushNamed("/login");
                },
                child: const Text(
                  "SIGN IN >",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Column(children: <Widget>[
        const Text(
          "AQUA NET",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "ONE",
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "TWO",
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "THREE",
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "FOUR",
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "FIVE",
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "SIX",
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                width: 20,
              ),
              MaterialButton(
                color: const Color.fromARGB(255, 30, 233, 216),
                onPressed: () {
                  Navigator.of(context).pushNamed("/login");
                },
                child: const Text(
                  "SIGN IN>",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
