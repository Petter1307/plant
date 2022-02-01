import 'package:flutter/material.dart';
import 'package:plantonizer/authentification/authentification_serivce.dart';
import 'package:provider/src/provider.dart';
import 'package:plantonizer/helper.dart';

void showSnackbar(BuildContext context, String message) async {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(message),
        duration: const Duration(milliseconds: 1200),
      ));
    }



class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Login Page"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          enableSuggestions: true,
                          autocorrect: false,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: 'Email'
                          ),
                          controller: emailTextController,
                        )
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
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
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  height: 40,
                  width: 300,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.indigoAccent,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(color: Colors.indigoAccent),
                      )
                    ),
                    onPressed: () async {
                      final result = context.read<AuthenticationService>()
                      .signIn(
                        email: emailTextController.text.trim(),
                        password: passwordTextController.text.trim(),
                      ); // TODO Change the login system. Use this : https://www.youtube.com/watch?v=wUSkeTaBonA&t=2461s
                      if(result == "Signed in")
                      {
                        Navigator.popAndPushNamed(context, '/plants');
                      }
                    },
                    child: const Text("Sing in"),
                  ),
                ),
                 const SizedBox(
                  height: 24,
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context,'/singup'),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Do you want an account ?"),
                      Text(" Sing up",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                      )
                    ],
                  ),
                ),
                 const SizedBox(
                  height: 24,
                ),
                Row( // Place holders. 
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(    
                      radius: 30,       // TODO Implement the google sing in/up button
                      child:Icon(Icons.g_mobiledata,
                      size: 50,),
                    ),
                    SizedBox(
                      width: 16,
                    ), 
                    CircleAvatar(
                      radius: 30,
                      child: Icon(Icons.facebook,
                      size: 40,
                      ),
                    )
                  ],
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
