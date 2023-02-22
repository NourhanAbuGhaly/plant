import 'package:flutter/material.dart';
import 'package:plant/widget/plant_data_box.dart';

class PlantDetails extends StatelessWidget {
  const PlantDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PlantsDataBox(
          image: 'assets/images/gardening-tools.png',
          title: 'Care',
          text: 'easy',
        ),
        PlantsDataBox(
          image: 'assets/images/Group 32.png',
          title: 'Water',
          text: 'Once a week',
        ),
        PlantsDataBox(
          image: 'assets/images/photosynthesis.png',
          title: 'Sun',
          text: 'Full',
        ),
      ],
    );
  }
}
