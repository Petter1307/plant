import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:plantonizer/authentification/LoginPage.dart';
import 'package:plantonizer/authentification/authentification_serivce.dart';
import 'package:plantonizer/plant_logic/Plants_page.dart';
import 'package:provider/src/provider.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  bool isLoading = false;

  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Sing up"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Email Adress';
                            } else if (!value.contains('@')) {
                              return 'Please enter a valid email adress!';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: 'Email',
                          ),
                          controller: emailTextController,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(
                          child: TextFormField(
                        enableSuggestions: false,
                        autocorrect: false,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Password',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Password';
                          } else if (value.length < 8) {
                            return 'Password must be at least 8 characters';
                          }
                          return null;
                        },
                        controller: passwordTextController,
                      ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  height: 40,
                  width: 300,
                  child: isLoading
                      ? CircularProgressIndicator()
                      : ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 6,
                              primary: Colors.indigoAccent,
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: const BorderSide(
                                    color: Colors.indigoAccent),
                              )),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                isLoading = true;
                              });
                              register();
                            }
                          },
                          child: Text("Create Account"),
                        ),
                ),
                const SizedBox(
                  height: 24,
                ),
                InkWell(
                  onTap: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginPage())),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account ?"),
                      Text(
                        " Sing in",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                // TODO Add google sing in button.
              ], // Main column cildren
            ),
          ),
        ),
      ),
    );
  }

  void register() {
    auth
        .createUserWithEmailAndPassword(
            email: emailTextController.text,
            password: passwordTextController.text)
        .then((result) {
      isLoading = false;
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => PlantsPage()));
    }).catchError((err) {
      showDialog(
          context: context,
          builder: (BuildContext) {
            return AlertDialog(
              title: Text("Error"),
              content: Text(err.toString()),
              actions: [
                TextButton(
                  child: Text("Ok"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          });
    });

    @override
    void dispose() {
      super.dispose();
      emailTextController.dispose();
      passwordTextController.dispose();
    }
  }
}
