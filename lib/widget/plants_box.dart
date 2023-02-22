import 'package:flutter/material.dart';

import '../constants/constant.dart';

class PlantsBox extends StatelessWidget {
  String label;
  String data;
  PlantsBox({required this.label, required this.data, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '$label : ',
            style: kGreenBoldTextSize18,
          ),
          Text(
            data,
            style: kBlackTextSize18,
          ),
        ],
      ),
    );
  }
}
