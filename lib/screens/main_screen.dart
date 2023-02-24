import 'package:flutter/material.dart';
import 'package:plant/constants/constant.dart';
import 'package:plant/screens/explore_screen.dart';
import 'package:plant/screens/home/home_screen.dart';
import 'package:plant/screens/my_plant_screen.dart';
import 'package:plant/screens/reminder_screen.dart';
import 'package:plant/screens/reminder_screenscond.dart';
import 'package:plant/widget/widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const String id = "MainScreen";

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  Color color = const Color(0xff3A7F0D);
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: !flag
            ? StartedScreen()
            : index == 0
            ? HomeScreen()
            : index == 1
            ? RimenderScreen()
            : index == 2
            ? ExploreScreen()
            : MyPlantScreen(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (val) {
            setState(() {
              index = val;
              flag = true;
            });
          },
          currentIndex: index,
          unselectedLabelStyle: const TextStyle(
              color: Color(0xff9E9E9E),
              fontSize: 12,
              fontWeight: FontWeight.w600),
          selectedLabelStyle: TextStyle(
              color: color, fontSize: 20, fontWeight: FontWeight.w600),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: kGreyColor,
                  size: 28,
                ),
                label: "Home",
                activeIcon: Icon(
                  Icons.home_outlined,
                  color: kMainColor,
                  size: 32,
                )),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_alert, color: kGreyColor, size: 28),
              label: 'Reminder',
              activeIcon: Icon(
                Icons.add_alert,
                color: kMainColor,
                size: 32,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.travel_explore_outlined,
                  color: kGreyColor, size: 28),
              label: 'Explore',
              activeIcon: Icon(
                Icons.travel_explore_outlined,
                color: kMainColor,
                size: 32,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.flag_circle, color: kGreyColor, size: 28),
              label: 'My Plant',
              activeIcon: Icon(
                Icons.flag_circle,
                color: kMainColor,
                size: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StartedScreen extends StatefulWidget {
  const StartedScreen({Key? key}) : super(key: key);

  @override
  State<StartedScreen> createState() => _StartedScreenState();
}

class _StartedScreenState extends State<StartedScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          color:KColor1,
          child: Column(
            children: [
              MyTitleWidget(title: "Home", subtitle: "TODAY TASKS", onTap: (){}),

              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: SingleChildScrollView(
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              child: Image.asset(
                                'assets/images/designecologist.png',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              child: Image.asset(
                                'assets/images/finkelstein.png',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "Identify and find new plants",
                              style: TextStyle(
                                  color: kMainColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            MyTextFieldWidget(
                              title: "Search plants",
                              MyOnChange: (val) {},
                              icon: Icon(Icons.search),
                              border: 50.0,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Get plant descriptions and care tips",
                              style: TextStyle(
                                  color: KBlackColor,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: KColor1,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(200),
                bottomRight: Radius.circular(200)),
          ),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 7,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: CircleAvatar(
                    maxRadius: 40.0,
                    backgroundColor: kMainColor,
                    child: Icon(
                      Icons.camera_alt_rounded,
                      color: KTextFeild,
                      size: 40,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: GestureDetector(
            onTap: () {},
            child: Text(
              "OPEN CAMERA",
              style: TextStyle(
                color: kMainColor,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
          ),
        )
      ]),
    );
  }
}