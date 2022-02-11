import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:plantonizer/authentification/LoginPage.dart';
import 'package:plantonizer/authentification/authentification_serivce.dart';
import 'package:plantonizer/plant_logic/plant_card.dart';
import 'package:provider/src/provider.dart';

class PlantsPage extends StatefulWidget {
  const PlantsPage({
    Key? key,
  }) : super(key: key);
  @override
  State<PlantsPage> createState() => _PlantsPageState();
}

class _PlantsPageState extends State<PlantsPage> {
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("Plants page"),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PlantCard(),
            PlantCard(),
            ElevatedButton(
              child: Text("Singout"),
              onPressed: () async {
                await _authService.signOut();
              },
            )
          ],
        ),
      ),
    );
  }
}
