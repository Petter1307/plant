import 'package:flutter/material.dart';
import 'package:plantonizer/plant_logic/plant_class.dart';


class PlantCard extends StatefulWidget {
  const PlantCard({ Key? key }) : super(key: key);

  @override
  _PlantCardState createState() => _PlantCardState();
}
class _PlantCardState extends State<PlantCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue[300],
      shadowColor: Colors.red,
        child: InkWell(
          onTap: () {
            print("XD");
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("My Cactus"),
              Text("Insert image here"),
              Text("Timer"),
            ],
          ),
        ),

    );
  }
}
/*
Card(
          color: Colors.amberAccent,
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const [
                Flexible(
                  //flex: 3,
                  child:SizedBox(
                    height: 30,
                    width: 30 ,
                    child: Text("My Cactus"),
                    )
                 ),
                   Flexible(
                  child:SizedBox(
                    height: 30,
                    width: 30 ,
                    child: Text("Image placeholder"),
                    )
                 ),
                   Flexible(
                 // flex: 3,
                  child:SizedBox(
                    height: 30,
                    width: 30 ,
                    child: Text("Timer placeholder"),
                    )
                 ),
                 
              ],
            ),
            onTap: () {
              print("xd");
            },

          ),

    );
*/




/*
Padding(                              //Padding arround the container.
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
              ) 
*/