import 'package:flutter/material.dart';
import 'package:plantonizer/classes/plant_class.dart';


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
                color: Colors.grey[500],
                height: 250,
                width: 250,
              //   decoration: BoxDecoration(
              //  // border: Border.all(
              //   //color: Colors.red[500],        // this is bugged out. doesn`t work as intended.
              //   // ),
              //   borderRadius: BorderRadius.circular(20) // use instead of BorderRadius.all(Radius.circular(20))
              //   ),
              // decoration: BoxDecoration(
              //   border: Border(bottom: 2,),
              // ),
              ),
            ),
          ],
        ),
        ),
    );
  }
}