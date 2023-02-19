import 'package:flutter/material.dart';
import 'package:plant/screens/home_screen.dart';
import 'package:plant/screens/login_screen.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
static const String id= "RegisterScreen";
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
                  alignment: Alignment.bottomRight,
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
                        SizedBox(height: 10,),
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
                                  hintText: "Name",
                                  hintStyle: TextStyle(
                                      color: Color(0xff9E9E9E),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ),
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
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      color: Color(0xff9E9E9E),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),

                        Container(
                          child: Material(
                            elevation: 5.0,
                            color: Color(0xff49A010),
                            borderRadius: BorderRadius.circular(5.0),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator
                                .pushNamed(context,HomeScreen.id);
                                //Go to login screen.
                              },
                              minWidth: 200.0,
                              height: 60.0,
                              child: Text(
                                "sign up",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Already have account ",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            GestureDetector(
                              onTap: (){Navigator.pushNamed(context, LoginScreen.id);},
                              child: Text(
                                " LOGIN",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff3A7F0D)),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
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
