import 'package:flutter/material.dart';

  class ButtonText extends StatelessWidget {
     ButtonText ({Key? key, required this.title, required this.color, required this.widget}) : super(key: key);
   final String title ;
   final Color color;
   final String widget;

    @override
    Widget build(BuildContext context) {
      return    Padding(
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
class ButtonText1 extends StatelessWidget {
  ButtonText1 ({Key? key, required this.title, required this.color, required this.widget}) : super(key: key);
  final String title ;
  final Color color;
  final String widget;

  @override
  Widget build(BuildContext context) {
    return    Padding(
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

