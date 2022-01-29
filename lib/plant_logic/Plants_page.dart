import 'package:flutter/material.dart';
import 'package:plantonizer/plant_logic/plant_card.dart';

class PlantsPage extends StatelessWidget {
  const PlantsPage({ Key? key }) : super(key: key);

// TODO Make it just a list of containers. 



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("Plants page"),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PlantCard(),
            PlantCard(),
          ],
        ),
        ),
      );
  }
}