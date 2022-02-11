import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:plantonizer/models/UserModel.dart';
import 'package:plantonizer/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:plantonizer/authentification/authentification_serivce.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(Plantonizer());
}

class Plantonizer extends StatelessWidget {
  Plantonizer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel?>.value(
        initialData: null,
        value: AuthService().onAuthStateChanged,
        builder: (context, snapshot) {
          return MaterialApp(
            home: Wrapper(),
          );
        });
  }
}
