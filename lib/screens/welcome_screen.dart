import 'package:flutter/material.dart';
import 'package:plant/screens/login_screen.dart';
import 'package:plant/screens/register_screen.dart';

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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                child: Material(
                  elevation: 5.0,
                  color: Color(0xff49A010),
                  borderRadius: BorderRadius.circular(5.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.id);

                      //Go to login screen.
                    },
                    minWidth: 200.0,
                    height: 60.0,
                    child: Text(
                      'LOG IN',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(5.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RegisterScreen.id);

                      //Go to login screen.
                    },
                    minWidth: 200.0,
                    height: 60.0,
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                        color: Color(0xff3A7F0D),
                      ),
                    ),
                  ),
                ),
              ),
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
