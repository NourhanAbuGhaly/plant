import 'package:flutter/material.dart';
import 'package:plant/screens/cood_screen.dart';
import 'package:plant/screens/forget_password_screen.dart';
import 'package:plant/screens/home_screen.dart';
import 'package:plant/screens/login_screen.dart';
import 'package:plant/screens/on_boarding_screen.dart';
import 'package:plant/screens/register_screen.dart';
import 'package:plant/screens/splash_screen.dart';
import 'package:plant/screens/welcome_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color(0xff3A7F0D)),
      debugShowCheckedModeBanner: false,
        routes: {
          LoginScreen.id: (context) => LoginScreen(),
          SplashScreen.id:(context)=>SplashScreen(),
          RegisterScreen.id:(context)=>RegisterScreen(),
          CoodScreen.id:(context)=>CoodScreen(),
          ForgetScreen.id:(context)=>ForgetScreen(),
          HomeScreen.id:(context)=>HomeScreen()

        },
      home: Scaffold(
        body:SplashScreen(),
    ));
  }
}
