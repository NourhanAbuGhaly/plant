import 'package:flutter/material.dart';
import 'package:plant/constants/constant.dart';
import 'package:plant/screens/main_screen.dart';
import 'package:plant/screens/auth/login_screen.dart';
import 'package:plant/widget/widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static const String id = "RegisterScreen";
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                  const SizedBox(
                    height: 10,
                  ),
                  MyTextFieldWidget(
                      title: "Name", MyOnChange: (val) {}, icon: null),
                  MyTextFieldWidget(
                      title: "Email", MyOnChange: (val) {}, icon: null),
                  MyTextFieldWidget(
                      title: "PassWord", MyOnChange: (val) {}, icon: null),
                  SizedBox(
                    height: 15,
                  ),
                  MyButtonText1(
                      title: "sign up",
                      color: kBoxColor,
                      widget: MainScreen.id),
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Already have account? ",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      MyGestureDetector(
                          title: "LOGIN",
                          widget: LoginScreen.id,
                          color: kMainColor),
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
