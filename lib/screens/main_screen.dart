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
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xffD0DFCF),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "TODAY TASKS",
                          style: TextStyle(
                              color: kMainColor,
                              fontWeight: FontWeight.w100,
                              fontSize: 10),
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                              color: kMainColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 28),
                        )
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings_input_svideo,
                        color: kMainColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: SingleChildScrollView(
                        child: Stack(
                          children: [
                            Container(
                              child: Image.asset(
                                'assets/images/designecologist.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              child: Image.asset(
                                'assets/images/finkelstein.png',
                                fit: BoxFit.cover,
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
                            TextField(),
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
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffD0DFCF),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(150),
                      bottomRight: Radius.circular(150)),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 10,
                    ),
                    Center(
                      child: Icon(
                        Icons.camera_alt_rounded,
                        color: kMainColor,
                        size: 32,
                      ),
                    )
                  ],
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
      ],
    );
  }
}
