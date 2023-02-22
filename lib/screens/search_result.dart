import 'package:flutter/material.dart';
import 'package:plant/constants/constant.dart';
import 'package:plant/widget/button_widget.dart';

import '../widget/detailes.dart';
import '../widget/plant_data_box.dart';
import '../widget/plants_details.dart';

class SearchResultScreen extends StatefulWidget {
  static const String id = "SearchResult";

  const SearchResultScreen({Key? key}) : super(key: key);

  @override
  State<SearchResultScreen> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResultScreen> {
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
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 4,
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
                        const Positioned(
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
              padding: const EdgeInsets.all(15.0),
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
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: PlantDetails(),
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
