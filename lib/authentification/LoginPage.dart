import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email",
              ),
            ),
            TextField(
              obscureText: true,
              decoration:InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password", 
                ),
            ),
            Text("Login button place holder"),
            Text("sing up place holder"),
            Text("google login place holder"),
          ],
        ),
      ),
    );
  }
}