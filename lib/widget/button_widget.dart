import 'package:flutter/material.dart';
import 'package:plant/constants/constant.dart';

class ButtonWidget extends StatelessWidget {
  String text;
  Function() onPressed;

  ButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      color: kMainColor,
      borderRadius: BorderRadius.circular(5.0),
      child: MaterialButton(
        onPressed: () {
          print('button clicked ');
          onPressed;
        },
        // Navigator.pushNamed(context, LoginScreen.id);

        //Go to login screen.

        minWidth: 200.0,
        height: 60.0,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
