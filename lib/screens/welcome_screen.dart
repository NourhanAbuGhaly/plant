import 'package:flutter/material.dart';
import 'package:plant/constants/constant.dart';
import 'package:plant/screens/auth/login_screen.dart';
import 'package:plant/screens/auth/register_screen.dart';
import 'package:plant/widget/widget.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ButtonText1(title:'LOG IN', color: Colors.white, widget: LoginScreen.id),

              ButtonText(title: "SIGN IN", color:kMainColor, widget:  RegisterScreen.id),
              SizedBox(
                height: MediaQuery.of(context).size.height / 6,
              )
            ],
          ),
          Positioned(
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              child: Image.asset(
                "assets/images/Plant care.png",
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
