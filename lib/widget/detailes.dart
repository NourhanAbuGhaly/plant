import 'package:flutter/material.dart';
import 'package:plant/constants/constant.dart';

class Details extends StatelessWidget {
  IconData icon;
  String title;
  Color? arrowColor;
  TextStyle textStyle;
  Function() onPressed;

  Details(
      {required this.icon,
      required this.title,
      this.arrowColor = Colors.black,
      this.textStyle = kDetailsBlackTextStyle,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ExpansionTile(
        trailing: Icon(
          Icons.keyboard_arrow_right,
          size: 40,
          color: arrowColor,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: kMainColor,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  title,
                  style: textStyle,
                ),
              ],
            ),
          ],
        ),
        children: [
          Text('plants overview '),
        ],
      ),
    );
  }
}
