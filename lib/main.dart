import 'package:flutter/material.dart';
import 'package:plantonizer/pages/home.dart';
import 'package:plantonizer/plant_logic/plant_container.dart';
import 'package:plantonizer/network/loading.dart';
import 'package:plantonizer/authentification/LoginPage.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/', // this should be loading page, for testing purposes now this is the homepage.
    routes: {
    '/' : (context) => LoginPage(), // The homepage WORKINGPROGRESS. 
    '/home' : (context) => Home(), // To be added later. Loading page.
     //'/plant' : (context) => PlantContainer() // To be added later. Page for each plant 
    },
  ));
}
