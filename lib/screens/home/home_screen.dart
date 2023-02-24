import 'package:flutter/material.dart';
import 'package:plant/constants/constant.dart';
import 'package:plant/model/plant_model.dart';
import 'package:plant/widget/widget.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "HomeScreen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<MyPlants> ListPlants = [
    MyPlants(image: "image", title: "title", descirption: "descirption"),
    MyPlants(image: "image", title: "title", descirption: "descirption"),
    MyPlants(image: "image", title: "title", descirption: "descirption"),
    MyPlants(image: "image", title: "title", descirption: "descirption"),
    MyPlants(image: "image", title: "title", descirption: "descirption"),
    MyPlants(image: "image", title: "title", descirption: "descirption"),
    MyPlants(image: "image", title: "title", descirption: "descirption"),
    MyPlants(image: "image", title: "title", descirption: "descirption")
  ];
  List<MyPlants> ListPlants1 = [
    MyPlants(image: "image", title: "title1", descirption: "descirption"),
    MyPlants(image: "image", title: "title1", descirption: "descirption"),
    MyPlants(image: "image", title: "title1", descirption: "descirption"),
    MyPlants(image: "image", title: "title1", descirption: "descirption"),
    MyPlants(image: "image", title: "title1", descirption: "descirption"),
    MyPlants(image: "image", title: "title1", descirption: "descirption"),
    MyPlants(image: "image", title: "title1", descirption: "descirption"),
    MyPlants(image: "image", title: "title1", descirption: "descirption")
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              MyTitleWidget(
                  title: "Home", subtitle: "TODAY TASKS", onTap: () {}),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
                child: Text(
                  "Today Tasks",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: kMainColor),
                ),
              ),
              MyContainer(ListPlants: ListPlants),
              SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
                child: Text(
                  "Daily Tasks",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: kMainColor),
                ),
              ),
              MyContainer(ListPlants: ListPlants1)
            ],
          ),
        )
      ],
    );
  }
}
