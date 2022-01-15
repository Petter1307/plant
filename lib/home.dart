import 'package:flutter/material.dart';
import 'package:plantonizer/authentification/authentification_serivce.dart';
import 'package:plantonizer/authentification/LoginPage.dart';
class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().userStream,
      
      builder: (context, snapshot){

        if(snapshot.connectionState == ConnectionState.waiting){
          return const Text("Loading"); 
        } else if (snapshot.hasError){
          return const Center(
            child: Text("error"),
          );
        } else if(snapshot.hasData)
        {
          return const Center(
            child: Text("Congrats, logged in"),
          );
        } else {
          return LoginPage();
        }
      }
      
    );
  }
}