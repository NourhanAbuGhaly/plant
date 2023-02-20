import 'package:flutter/material.dart';
import 'package:plant/constants/constant.dart';

class RemainderScreen extends StatefulWidget {
  const RemainderScreen({Key? key}) : super(key: key);

  @override
  State<RemainderScreen> createState() => _RemainderScreenState();
}

class _RemainderScreenState extends State<RemainderScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool toggle = false;

  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 350,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/pexels11.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.arrow_back_ios,
                        color: kMainColor,
                        size: 40,
                      ),
                      Icon(
                        Icons.info_outline,
                        color: kMainColor,
                        size: 40,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 0,
                left: 0,
                top: 180,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 12),
                  decoration: BoxDecoration(
                    color: kWhitColor,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                        spreadRadius: 0.2,
                        offset: Offset(
                          0.0, // Move to right 5  horizontally
                          1.0, // Move to bottom 5 Vertically
                        ),
                      ),
                    ],
                    border: Border.all(
                      color: kBoxColor,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 25.0),
                        child: Text(
                          'plant name',
                          style: kResultTextStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Common Name: ',
                            style: kDetailsBlackTextStyle,
                          ),
                          Text(' plant name ', style: kDetailsBlackTextStyle),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10,
            ),
            color: kWhitColor,
          ),
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10,
              ),
              color: kMainColor,
            ),
            tabs: const [
              Tab(
                text: 'REMINDERS',
              ),
              Tab(
                text: 'About plant',
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text('Every 3 day ')),
              Switch(
                // This bool value toggles the switch.
                value: toggle,
                activeColor: kMainColor,
                onChanged: (bool value) {
                  // This is called when the user toggles the switch.
                  setState(() {
                    toggle = value;
                  });
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
