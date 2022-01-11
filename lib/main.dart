import 'package:flutter/material.dart';
import 'package:plantonizer/pages/home.dart';
import 'package:plantonizer/plant_logic/plant_container.dart';
import 'package:plantonizer/network/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/', // this should be loading page, for testing purposes now this is the homepage.
    routes: {
     // '/' : (context) => Home(), // The homepage WORKINGPROGRESS. 
      // '/home' : (context) => Loading(), // To be added later. Loading page.
       '/' : (context) => PlantContainer() // To be added later. Page for each plant 
    },
  ));
}
