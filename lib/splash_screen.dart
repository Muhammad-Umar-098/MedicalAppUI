import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medicalapp/walk_through_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const WalkThroughScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 35,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.add,
                size: 30,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Quick Medical!",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
      backgroundColor: Colors.blue,
    );
  }
}
