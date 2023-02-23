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
    return Container(
      child: Column(
        children: [
          MyTitleWidget(title: "Home", subtitle: "TODAY TASKS", onTap: () {}),
          // Container(
          //   child: MyContainer(ListPlants: ListPlants),
          // ),
          // SizedBox(height: 20.0,child: Container(color: Colors.black38,),),
          // Container(
          //   child: MyContainer(ListPlants: ListPlants1),
          // )
        ],
      ),
    );
  }
}
