import 'package:flutter/material.dart';
import 'package:plantonizer/plant_logic/plant_card.dart';

class PlantsPage extends StatelessWidget {
  const PlantsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Plants page"),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PlantCard(),
                PlantCard(),
              ],
            ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PlantCard(),
                PlantCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}