import 'package:flutter/material.dart';
import 'package:plant/constants/constant.dart';
import 'package:plant/widget/button_widget.dart';

import '../widget/detailes.dart';
import '../widget/plant_data_box.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  String buttonText = 'add to my plant';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'result'.toUpperCase(),
          style: kAppBarTextStyle,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: kMainColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      elevation: 5,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 200,
                            child: Image.asset(
                              'assets/images/pexels.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Text(
                              'Tuilp',
                              style: kResultTextStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 75,
                    right: 20,
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/Path 105.png',
                          fit: BoxFit.fill,
                        ),
                        Positioned(
                          left: 15,
                          top: 5,
                          child: Text(
                            'Best Match',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 85,
                    right: 280,
                    left: -10,
                    child: Image.asset(
                      'assets/images/Group 24.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ]),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: ButtonWidget(
                  text: buttonText.toUpperCase(),
                  onPressed: () {
                    print('buttonText:$buttonText');

                    setState(() {
                      buttonText = 'Set Care Remainder';
                      print('buttonText:$buttonText');
                    });
                  }),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PlantsDataBox(
                    image: 'assets/images/gardening-tools.png',
                    title: 'Care',
                    text: 'easy',
                  ),
                  PlantsDataBox(
                    image: 'assets/images/Group 32.png',
                    title: 'Water',
                    text: 'Once a week',
                  ),
                  PlantsDataBox(
                    image: 'assets/images/photosynthesis.png',
                    title: 'Sun',
                    text: 'Full',
                  ),
                ],
              ),
            ),
            Details(
              icon: Icons.info_outline,
              title: 'Plants Overview',
              arrowColor: kMainColor,
              textStyle: kDetailsGreenTextStyle,
              onPressed: () {},
            ),
            Details(
              icon: Icons.airplane_ticket,
              title: 'How to grow Overview',
              arrowColor: kMainColor,
              textStyle: kDetailsGreenTextStyle,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
