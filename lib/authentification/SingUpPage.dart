import 'package:flutter/material.dart';


class SingUp extends StatefulWidget {
  const SingUp({ Key? key }) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {

  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  

  final _formKey = GlobalKey<FormState>();
 
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
                          controller: passwordTextController,
                        )
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
                      elevation: 6,
                      primary: Colors.indigoAccent,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(color: Colors.indigoAccent),
                      )
                    ),
                    onPressed: () async {


                      //TODO Finis the singup method.
                      Navigator.pop(context);
                      Navigator.popAndPushNamed(context, '/plants');
                    },
                    child: Text("Create Account"),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account ?"),
                      Text(" Sing in",
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
}