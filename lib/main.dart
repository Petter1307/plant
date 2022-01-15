import 'package:flutter/material.dart';
import 'package:plantonizer/home.dart';
import 'package:plantonizer/routes.dart';
import 'package:plantonizer/plant_logic/plant_container.dart';
import 'package:plantonizer/network/loading.dart';
import 'package:plantonizer/authentification/LoginPage.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/', // this should be loading page, for testing purposes now this is the homepage.
    routes: appRoutes,
  ));
}
// TODO Modify this page when front end is done. MAKE IT RIGHT AFTER FRONT END.