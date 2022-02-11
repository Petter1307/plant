import 'package:flutter/material.dart';
import 'package:plantonizer/authentification/LoginPage.dart';

class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return LoginPage();
  }
}
