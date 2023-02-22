import 'package:flutter/material.dart';
import 'package:plant/constants/constant.dart';
import 'package:plant/screens/auth/forget_password_screen.dart';
import 'package:plant/screens/auth/login_screen.dart';
import 'package:plant/screens/auth/register_screen.dart';
import 'package:plant/screens/cood_screen.dart';
import 'package:plant/screens/main_screen.dart';
import 'package:plant/screens/search_result.dart';
import 'package:plant/screens/reminder_screen.dart';
import 'package:plant/screens/splash/splash_screen.dart';
import 'package:plant/screens/splash/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: kMainColor),
      debugShowCheckedModeBanner: false,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SplashScreen.id: (context) => SplashScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        CoodScreen.id: (context) => CoodScreen(),
        ForgetScreen.id: (context) => ForgetScreen(),
        MainScreen.id: (context) => MainScreen(),
        SearchResultScreen.id: (context) => SearchResultScreen(),
        RemainderScreen.id: (context) => RemainderScreen(),
      },
      home: Scaffold(
        body: MainScreen(),
      ),
    );
  }
}
