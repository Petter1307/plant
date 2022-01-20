import 'package:flutter/material.dart';
import 'package:plantonizer/plant_logic/plant_container.dart';

class PlantsPage extends StatelessWidget {
  const PlantsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                PlantContainer(),
                PlantContainer(),
              ],
            ),
          Row(
              children: [
                PlantContainer(),
                PlantContainer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}