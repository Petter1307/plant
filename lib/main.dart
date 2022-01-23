import 'package:flutter/material.dart';
import 'package:plantonizer/home.dart';
import 'package:plantonizer/routes.dart';
import 'package:plantonizer/plant_logic/plant_card.dart';
import 'package:plantonizer/network/loading.dart';
import 'package:plantonizer/authentification/LoginPage.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/singup', // this should be loading page. For testing purposes this is changed constantly.
    routes: appRoutes,
  ));
}
// TODO Modify this page when front end is done. MAKE IT RIGHT AFTER FRONT END