import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:plantonizer/authentification/SingUpPage.dart';
//import 'package:plantonizer/authentification/authentification_serivce.dart';
import 'package:plantonizer/plant_logic/Plants_page.dart';
//import 'package:provider/src/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();

  bool isLoading = false;

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
                          validator: (value){
                            if(value!.isEmpty){
                              return 'Enter Email Adress';
                            } else if (!value.contains('@')){
                              return 'Please enter a valid email adress!';
                            }
                              return null;
                          },
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
                          controller: passwordTextController,
                          enableSuggestions: false,
                          autocorrect: false,
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: 'Password',
                          ),
                          validator: (value){
                            if(value!.isEmpty)
                            {
                              return 'Enter Password:';
                            }else if (value.length < 8){
                              return 'Password must be at least 8 characters';
                            }
                            return null;
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: isLoading ? CircularProgressIndicator() : Container(
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
                      onPressed: () {
                        if(_formKey.currentState!.validate()){
                          setState(() {
                            isLoading = true;
                          });
                          singinfunc();
                        }
                        
                      },
                      child: const Text("Sing in"),
                    ),
                  ),
                ),
                 const SizedBox(
                  height: 24,
                ),
                InkWell(
                  onTap: () => Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => SingUp())),
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



void singinfunc()
{
  FirebaseAuth.instance
    .signInWithEmailAndPassword(
      email: emailTextController.text,
      password: passwordTextController.text)
      .then((result) {
        isLoading = false;
        Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => PlantsPage()) 
        );
      }).catchError((err){
        print(err);
        showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text("Error"),
            content: Text(err.toString()),
            actions: [
                ElevatedButton(
                  child: Text("Ok"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
          );
        },
        );
      });
}
}