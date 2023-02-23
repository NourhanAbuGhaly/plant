import 'package:flutter/material.dart';
import 'package:plant/constants/constant.dart';
import 'package:plant/model/plant_model.dart';
import 'package:plant/widget/widget.dart';

class MyPlantScreen extends StatefulWidget {
  const MyPlantScreen({Key? key}) : super(key: key);

  @override
  State<MyPlantScreen> createState() => _MyPlantScreenState();
}

class _MyPlantScreenState extends State<MyPlantScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyTitleWidget(
              title: "My Plants", subtitle: "PLANT COLLECTION", onTap: () {}),
          MyContainer(ListPlants: ListPlants),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: kMainColor,
        onPressed: () {},
      ),
    );
  }
}
