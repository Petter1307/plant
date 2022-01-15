// Importing pages used on the route.
import 'package:plantonizer/home.dart';
import 'package:plantonizer/authentification/LoginPage.dart';
import 'package:plantonizer/plant_logic/Plants_page.dart';


// Added app routes to separate folder.
var appRoutes={
    '/' : (context) => LoginPage(),         // To be added later. Loading page.
    '/home' : (context) => Home(),         // The homepage WORKINGPROGRESS.
    '/plants' : (context) => PlantsPage() // Page for plants
}; 