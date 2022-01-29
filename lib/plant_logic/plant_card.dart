import 'package:flutter/material.dart';
import 'package:plantonizer/plant_logic/plant_class.dart';



class PlantCard extends StatefulWidget {
  const PlantCard({ Key? key }) : super(key: key);

  @override
  _PlantCardState createState() => _PlantCardState();
}
class _PlantCardState extends State<PlantCard> {

  final int cd = 12; // to be changed later with plant class object

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
                  height: 150,
                  width: 400,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Colors.green.shade100,
                      blurRadius: 5,
                      spreadRadius: 3,
                    )],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green[50]     
                    ),
                  child: InkWell(
                    onTap: () {
                      print("xd"); // TODO Add navigator push plant page.
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Imageplaceholder"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Plant Name"),
                            Text("Description placehorder"),
                            Text("Water in: "),
                          ],
                        )
                      ],
                    )
                  ),
                  ),
    );
  }
}

// TODO Make tealAccent 400 as main collor. Set as backgroud a lighter version of it.
// TODO Find a collor for the background of the container.
// TODO Return to container with a InkWell child and Column child to InkWell.
/*// Code bellow doesn`t work as intended.
Hero(
        tag:cd ,
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: () {
              print("xd");
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Flexible(
                  fit: FlexFit.loose,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                        "CACTUS1",
                      style: TextStyle(
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.fade,
                      softWrap: false,
                    ),
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  flex: 3,
                  child: SizedBox(
                    child: Image.asset(
                      'assets/cactus1.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Flexible(child: Text("Timer"),
                  fit: FlexFit.loose,
                ),
              ],
            ),
          ),
        ),
      );

 */
/**  // This works in a way or an other
 * Card(
      color: Colors.blue[300],
      shadowColor: Colors.green,
        child: InkWell(
          onTap: () {
            print("XD");
          },
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("My Cactus"),
              Container(
                child: Image.asset('assets/cactus1.jpg'),
                height: 200,
                width: 150,
              ),
              //Image.asset('assets/cactus1.jpg')
              Text("Timer"),
            ],
          ),
        ),

    );
 * 
 * 
 */




/*   // I DONT REMEMBER IF THIS WORKS BUT I BELIEVE THAT THIS DOESNT WORK.
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