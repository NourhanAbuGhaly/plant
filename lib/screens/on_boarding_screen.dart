import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:plant/screens/welcome_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: IntroductionScreen(
              pages: [
                PageViewModel(
                  decoration: PageDecoration(
                      bodyPadding: EdgeInsets.only(top: 10.0), imageFlex: 3),
                  titleWidget: Text(
                    "Discover plants",
                    style: TextStyle(
                        color: Color(0xff3A7F0D),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  bodyWidget: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get to Know the plants around you and add you favorite plants to your my plant section ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffA7A7A7),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  image: Container(
                    padding: EdgeInsets.all( 20.0),
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/Group 221.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                PageViewModel(
                  decoration: PageDecoration(
                      bodyPadding: EdgeInsets.only(top: 10.0), imageFlex: 3),
                  titleWidget: Text(
                    "Tips & tricks",
                    style: TextStyle(
                        color: Color(0xff3A7F0D),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  bodyWidget: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          " Get all the information you need to take good care of your plant",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xffA7A7A7),
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  image: Container(
                    padding: EdgeInsets.all( 20.0),
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/Group 221.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                PageViewModel(
                  decoration: PageDecoration(
                      bodyPadding: EdgeInsets.only(top: 10.0), imageFlex: 3),
                  titleWidget: Text(
                    "Set Reminder",
                    style: TextStyle(
                        color: Color(0xff3A7F0D),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  bodyWidget: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          " Add a reminder for you plants to send you a reminder when to take care of yours plants ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xffA7A7A7),
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  image: Container(
                    padding: EdgeInsets.all( 20.0),
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/Group 221.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],

              showDoneButton: true,
              showSkipButton: true,
              showNextButton: true,
              //  showBackButton: true,
              skip: const Text("Skip",
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Color(0xff3A7F0D))),
              next: const Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
              //   back :const Icon(
              //   Icons.arrow_back,
              //   color: Colors.black,
              // ),
              done: const Text("Done",
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Color(0xff3A7F0D))),
              onDone: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => WelcomeScreen())),

              // On Done button pressed

              onSkip: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => WelcomeScreen())),
              // On Skip button pressed

              dotsDecorator: DotsDecorator(
                size: const Size.square(10.0),
                activeSize: const Size(20.0, 10.0),
                //    activeColor: Constants.KPrimary,
                color: Colors.grey,
                spacing: const EdgeInsets.symmetric(horizontal: 3.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
              ),
            )));
  }
}
