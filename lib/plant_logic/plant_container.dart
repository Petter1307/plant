import 'package:flutter/material.dart';
import 'package:plantonizer/plant_logic/plant_class.dart';

// This is the container for each plant. 
// THAT SQUARE ARROUND THE PLANT !
// Which SQUARE ? WAIT FOR THE FINAL VERSION !!
class PlantContainer extends StatefulWidget {
  const PlantContainer({ Key? key }) : super(key: key);

  @override
  _PlantContainerState createState() => _PlantContainerState();
}

class _PlantContainerState extends State<PlantContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey[300],
                  ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Cactus 1"),
                    Text("ADD PLACE FOR PHOTO"),
                    Text("Add place for countdown timer for time left to water the plant") 
                  ],
                ),
                ),
              ),
          ],
        ),
        ),
    );
  }
}
