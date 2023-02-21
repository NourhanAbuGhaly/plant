import 'package:flutter/material.dart';

class MyPlantScreen extends StatefulWidget {
  const MyPlantScreen({Key? key}) : super(key: key);

  @override
  State<MyPlantScreen> createState() => _MyPlantScreenState();
}

class _MyPlantScreenState extends State<MyPlantScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child:Text('MyPlantScreen'),);
  }
}
