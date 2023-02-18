import 'dart:async';

import 'package:flutter/material.dart';
import 'package:plant/screens/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds:3),
            () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const OnBoardingScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Image.asset(
              "assets/images/Rectangle 24.png",
              fit: BoxFit.contain,
            ),
          ),
          Container(

            width: double.infinity,
            child: Image.asset(
              "assets/images/Group 220.png",
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
              child: Container(
              //  padding: EdgeInsets.only (bottom:30),
                alignment: Alignment.bottomCenter,
                width: double.infinity,
            child: Image.asset(
              "assets/images/Plant care.png",
              fit: BoxFit.fitWidth,
            ),
          ))
        ],
      ),
    ));
  }
}
