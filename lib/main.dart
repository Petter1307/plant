import 'package:flutter/material.dart';
import 'package:plantonizer/pages/home.dart';
import 'package:plantonizer/pages/plant.dart';
import 'package:plantonizer/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => Loading(),
      '/home' : (context) => Home(),
      '/plant' : (context) => PlantContainer()
    },
  ));
}
