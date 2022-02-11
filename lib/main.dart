import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:plantonizer/routes.dart';
import 'package:plantonizer/wrapper.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Plantonizer());
}
class Plantonizer extends StatelessWidget {
  const Plantonizer({ Key? key }) : super(key: key);
  //Root  of the app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Wrapper(),
      routes: appRoutes,
    );
  }
}