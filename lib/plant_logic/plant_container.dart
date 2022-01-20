import 'package:flutter/material.dart';
import 'package:plantonizer/plant_logic/plant_class.dart';


class PlantContainer extends StatefulWidget {
  const PlantContainer({ Key? key }) : super(key: key);

  @override
  _PlantContainerState createState() => _PlantContainerState();
}

class _PlantContainerState extends State<PlantContainer> {
  @override
  Widget build(BuildContext context) {
    return  Padding(                              //Padding arround the container.
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey[400],
                  ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center, // centered everyting.
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // spaced equaly on the vertical axys
                  children: const [
                    Text("xdd"),
                    Text("ADD PLACE FOR PHOTO"),
                    Text("Add place for countdown timer for time left to water the plant") 
                  ],
                ),
                ),
              );
  }
}
// TODO Make the container dynamic.