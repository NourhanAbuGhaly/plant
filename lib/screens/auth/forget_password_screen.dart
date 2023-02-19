import 'package:flutter/material.dart';
import 'package:plant/screens/cood_screen.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({Key? key}) : super(key: key);
  static const String id ="ForgetScreen";

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
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(5.0),
                        child: TextField(
                          onChanged: (val) {},
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(08, 158, 158, 158),
                              hintText: "Email",
                              hintStyle: TextStyle(
                                  color: Color(0xff9E9E9E),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                      child: Material(
                        elevation: 5.0,
                        color: Color(0xff49A010),
                        borderRadius: BorderRadius.circular(5.0),
                        child: MaterialButton(
                          onPressed: () {

Navigator.pushNamed(context, CoodScreen.id);
                            //Go to login screen.
                          },
                          minWidth: 200.0,
                          height: 60.0,
                          child: Text(
                            'Send',
                            style: TextStyle(
                              color: Colors.white,
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
