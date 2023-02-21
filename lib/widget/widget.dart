import 'package:flutter/material.dart';
import 'package:plant/constants/constant.dart';

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

  MyTextFieldWidget({this.border=0.0,
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
                color: KTextFeild, fontSize: 18, fontWeight: FontWeight.w400),
            border: OutlineInputBorder(
              borderSide: BorderSide(width: 3),
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
  const MyTitleWidget({Key? key, required this.title, required this.subtitle, required this.onTap}) : super(key: key);
final String title;
final String subtitle;
final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return  Padding(
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
            onPressed:onTap,
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
