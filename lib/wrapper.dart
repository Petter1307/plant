import 'package:flutter/material.dart';
import 'package:plantonizer/authentification/Authentification.dart';
import 'package:plantonizer/models/UserModel.dart';
import 'package:plantonizer/plant_logic/Plants_page.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userModel = Provider.of<UserModel?>(context);

    if (userModel == null) {
      return Auth();
    } else {
      return PlantsPage();
    }
  }
}
