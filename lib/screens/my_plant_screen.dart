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
    return Column(
      children: [
        MyTitleWidget(
            title: "My Plants", subtitle: "PLANT COLLECTION", onTap: () {}),
        Expanded(
          child: Container(
            child: ListView.builder(
                itemCount: ListPlants.length,
                itemBuilder: (context, index) {
                  return Material(
                    elevation: 15,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white,
                        border: Border.all(width: .5, color: kGreyColor),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 2.0,
                            spreadRadius: 0.0,
                            offset: Offset(2.0, 2.0), // shadow direction: bottom right
                          )
                        ],
                      ),
                      padding: EdgeInsets.all(20.0),
                      margin: EdgeInsets.all(12.0),
                      child: Column(children: [
                        Container(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: 100,
                                height: 100,
                                color: Colors.red,
                                child:
                                    Text(ListPlants[index].image.toString())),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  ListPlants[index].title.toString(),
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  ListPlants[index].descirption.toString(),
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        )),
                      ]),
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}

// MyTitleWidget(
// title: "My Plant",
// subtitle: "PLANT COLLECTION",
// onTap: () {}),
