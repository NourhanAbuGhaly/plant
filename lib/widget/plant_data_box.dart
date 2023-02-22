import 'package:flutter/material.dart';

import '../constants/constant.dart';
import 'detailes.dart';

class PlantsDataBox extends StatelessWidget {
  String image;
  String title;
  String text;
  PlantsDataBox({
    super.key,
    required this.image,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 140,
      width: 120,
      decoration: const BoxDecoration(
          color: kBoxColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            image,
          ),
          Text(
            title,
            style: kResultTextStyle,
          ),
          Container(
            width: 110,
            height: 35,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: kTransparentGreen,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: kSmallResultTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
