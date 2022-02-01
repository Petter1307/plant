import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:provider/provider.dart';

import 'package:plantonizer/authentification/authentification_serivce.dart';

import 'package:plantonizer/routes.dart';
import 'package:plantonizer/home.dart';
import 'package:plantonizer/plant_logic/plant_card.dart';
import 'package:plantonizer/network/loading.dart';
import 'package:plantonizer/authentification/LoginPage.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Plantonizer());
}

class Plantonizer extends StatelessWidget {
  const Plantonizer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<AuthenticationService>().authStateChanges,
          initialData: null,
        ),
      ],
      child: MaterialApp(
        title: "Plantonzier",
        initialRoute: '/', // this should be loading page. For testing purposes this is changed constantly.
        routes: appRoutes,
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseuser = context.watch<User>();
    if(firebaseuser != null)
    {
      return Home();
    }
      return LoginPage();
  }
}