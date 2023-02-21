import 'package:flutter/material.dart';
import 'package:plant/constants/constant.dart';
import 'package:plant/screens/explore_screen.dart';
import 'package:plant/screens/home_screen.dart';
import 'package:plant/screens/my_plant_screen.dart';
import 'package:plant/screens/reminder_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const String id = "MainScreen";

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  Color color = Color(0xff3A7F0D);
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: !flag
            ? started_screen()
            : index == 0
                ? HomeScreen()
                : index == 1
                    ? ReminderScreen()
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
          unselectedLabelStyle: TextStyle(
              color: Color(0xff9E9E9E),
              fontSize: 12,
              fontWeight: FontWeight.w600),
          selectedLabelStyle: TextStyle(
              color: color, fontSize: 20, fontWeight: FontWeight.w600),
          items: <BottomNavigationBarItem>[
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

class started_screen extends StatefulWidget {
  const started_screen({Key? key}) : super(key: key);

  @override
  State<started_screen> createState() => _started_screenState();
}

class _started_screenState extends State<started_screen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text("data"),Text("data")],
    );
  }
}
