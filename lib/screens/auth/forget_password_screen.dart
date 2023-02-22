import 'package:flutter/material.dart';
import 'package:plant/constants/constant.dart';
import 'package:plant/screens/cood_screen.dart';
import 'package:plant/widget/widget.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({Key? key}) : super(key: key);
  static const String id = "ForgetScreen";

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
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
                  MyTextFieldWidget(
                      title: "Email", MyOnChange: (val) {}, icon: null),
                  MyButtonText1(
                      title: 'Send', color: kBoxColor, widget: CoodScreen.id),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
