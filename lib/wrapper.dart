import 'package:flutter/material.dart';
import 'package:plantonizer/authentification/LoginPage.dart';
import 'package:plantonizer/plant_logic/Plants_page.dart';


class Wrapper extends StatelessWidget {
  const Wrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginPage(); 
  }
}