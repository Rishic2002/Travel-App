// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:test/Login/loginscreen.dart';

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
              const Text(
                "ONE",
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                width: 30,
              ),
              const Text(
                "TWO",
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                width: 30,
              ),
              const Text(
                "THREE",
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                width: 30,
              ),
              const Text(
                "FOUR",
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                width: 30,
              ),
              const Text(
                "FIVE",
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                width: 30,
              ),
              const Text(
                "SIX",
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                width: 30,
              ),
              MaterialButton(
                color: const Color.fromARGB(255, 30, 233, 216),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: const Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.white),
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
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                "ONE",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "TWO",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "THREE",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "FOUR",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "FIVE",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "SIX",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                width: 30,
              ),
              
            ],
          ),
        )
      ]),
    );
  }
}
