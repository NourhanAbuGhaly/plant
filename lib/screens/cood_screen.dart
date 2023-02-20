import 'package:flutter/material.dart';
import 'package:plant/constants/constant.dart';
import 'package:plant/screens/home_screen.dart';
import 'package:plant/widget/widget.dart';

class CoodScreen extends StatefulWidget {
  static const String id = "CoodScreen ";

  @override
  State<CoodScreen> createState() => _CoodScreenState();
}

class _CoodScreenState extends State<CoodScreen> {
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
          Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/images/Plant care.png",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  MyTextFieldWidget(title: "Cood", MyOnChange: (val) {}),
                  MyButtonText1(
                      title: 'Send', color: kBoxColor, widget: HomeScreen.id),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
