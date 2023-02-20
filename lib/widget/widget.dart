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
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(5.0),
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, widget);

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
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      child: Material(
        elevation: 5.0,
        color: Color(0xff49A010),
        borderRadius: BorderRadius.circular(5.0),
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, widget);

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

  const MyTextFieldWidget({ required this.title, required this.MyOnChange});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(5.0),
        child: TextField(
          onChanged: MyOnChange,
          decoration:  InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(08, 158, 158, 158),
              hintText: title,
              hintStyle: const TextStyle(
                  color: KTextFeild,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
              border: OutlineInputBorder()),
        ),
      ),
    );
  }
}
