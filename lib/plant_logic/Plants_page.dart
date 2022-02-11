import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:plantonizer/authentification/LoginPage.dart';
import 'package:plantonizer/authentification/authentification_serivce.dart';
import 'package:plantonizer/plant_logic/plant_card.dart';
import 'package:provider/src/provider.dart';

class PlantsPage extends StatefulWidget {
  const PlantsPage({ Key? key,}) : super(key: key);
  @override
  State<PlantsPage> createState() => _PlantsPageState();
}

class _PlantsPageState extends State<PlantsPage> {


 // late User user;

  // @override
  // void initState()
  // {
  //   setState(() {
  //     user = context.read<AuthService>().getUser()!;
  //   });
  // super.initState();
  // }

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
            // Text(
            //   // ignore: unnecessary_null_comparison
            //   user != null ? "${user.email}" : "No user Found",
            // ),
            PlantCard(),
            PlantCard(),
            ElevatedButton(
              child: Text("Singout"),
              onPressed: (){
                FirebaseAuth auth = FirebaseAuth.instance;
                auth.signOut().then((res){
                  Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context) => LoginPage()), (route) => false);
                });

              },
            )
          ],
        ),
        ),
      );
  }
}