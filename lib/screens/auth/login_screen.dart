import 'package:flutter/material.dart';
import 'package:plant/constants/constant.dart';
import 'package:plant/screens/auth/forget_password_screen.dart';
import 'package:plant/screens/auth/register_screen.dart';
import 'package:plant/screens/main_screen.dart';
import 'package:plant/widget/widget.dart';

import '../home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String id = "LoginScreen";

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    title: "Email",
                    MyOnChange: (val) {},
                    icon: null,
                    border: 15.0,
                  ),
                  MyTextFieldWidget(
                    title: "Password",
                    MyOnChange: (val) {},
                    icon: null,
                    border: 15.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 12.0),
                    alignment: Alignment.bottomRight,
                    child: MyGestureDetector(
                        title: "Forget Password   ",
                        widget: ForgetScreen.id,
                        color: kBoxColor),
                  ),
                  MyButtonText1(
                      title: 'LOG IN', color: kBoxColor, widget: MainScreen.id),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Are you not accunted? ",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      MyGestureDetector(
                          title: " SIGNUP",
                          widget: RegisterScreen.id,
                          color: kMainColor),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
