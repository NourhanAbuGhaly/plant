import 'package:flutter/material.dart';
import 'package:plant/constants/constant.dart';
import 'package:plant/model/plant_model.dart';

class MyButtonText extends StatelessWidget {
  MyButtonText(
      {Key? key,
      required this.title,
      required this.color,
      required this.widget})
      : super(key: key);
  final String title;

  final Color color;
  final String widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(5.0),
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(widget);

            //Go to login screen.
          },
          minWidth: 200.0,
          height: 60.0,
          child: Text(
            title,
            style: TextStyle(
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}

class MyButtonText1 extends StatelessWidget {
  MyButtonText1(
      {Key? key,
      required this.title,
      required this.color,
      required this.widget})
      : super(key: key);
  final String title;

  final Color color;
  final String widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Material(
        elevation: 5.0,
        color: Color(0xff49A010),
        borderRadius: BorderRadius.circular(5.0),
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(widget);

            //Go to login screen.
          },
          minWidth: 200.0,
          height: 60.0,
          child: Text(
            title,
            style: TextStyle(
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}

class MyTextFieldWidget extends StatelessWidget {
  final String title;
  final Function(String val) MyOnChange;
  final Icon? icon;
  late double border;

  MyTextFieldWidget({
    this.border = 0.0,
    required this.title,
    required this.MyOnChange,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: TextField(
        onChanged: MyOnChange,
        decoration: InputDecoration(
            suffixIcon: icon,
            filled: true,
            fillColor: Color.fromARGB(08, 158, 158, 158),
            hintText: title,
            hintStyle: const TextStyle(
                color: kGreyColor, fontSize: 18, fontWeight: FontWeight.w400),
            border: OutlineInputBorder(
              borderSide: BorderSide(width: 3,color: kBoxColor),
              borderRadius: BorderRadius.circular(border.toDouble()),
            )),
      ),
    );
  }
}

class MyGestureDetector extends StatelessWidget {
  const MyGestureDetector(
      {Key? key,
      required this.title,
      required this.widget,
      required this.color})
      : super(key: key);
  final String title;
  final String widget;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacementNamed(widget);
      },
      child: Text(
        title,
        style:
            TextStyle(fontWeight: FontWeight.w500, color: color, fontSize: 14),
      ),
    );
  }
}

class MyTitleWidget extends StatelessWidget {
  const MyTitleWidget(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.onTap})
      : super(key: key);
  final String title;
  final String subtitle;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
color:KColor1,
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
                subtitle,
                style: TextStyle(
                    color: kMainColor,
                    fontWeight: FontWeight.w100,
                    fontSize: 10),
              ),
              Text(
                title,
                style: TextStyle(
                    color: kMainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              )
            ],
          ),
          IconButton(
            onPressed: onTap,
            icon: Icon(
              Icons.settings_input_svideo,
              color: kMainColor,
            ),
          ),
        ],
      ),
    );
  }
}
class MyContainer extends StatelessWidget {
  const MyContainer({Key? key, required this.ListPlants}) : super(key: key);
final List<MyPlants> ListPlants;
  @override
  Widget build(BuildContext context) {
    return    Expanded(
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
                        offset: Offset(
                            2.0, 2.0), // shadow direction: bottom right
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
                                color: kMainColor,
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
    );
  }
}

