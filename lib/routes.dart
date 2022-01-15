// Importing pages used on the route.
import 'package:plantonizer/home.dart';
import 'package:plantonizer/authentification/LoginPage.dart';
import 'package:plantonizer/plant_logic/Plants_page.dart';
import 'package:plantonizer/plant_logic/plant.dart';


// Added app routes to separate folder.
var appRoutes={
    '/' : (context) => LoginPage(),         // Loading page.
    '/home' : (context) => Home(),         //  Home page
    '/plants' : (context) => PlantsPage(),// Page for plants 
    '/plant' : (context) => PlantPage()  // Page pressed container plant ( This page will be show the information about one speicific plant when pressed on its container)
}; 