import 'package:flutter/material.dart';
import 'package:plant/constants/constant.dart';
import 'package:plant/widget/widget.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "HomeScreen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(children: [
        Container(
          color: kGreyColor,
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
            color: kGreyColor,
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
