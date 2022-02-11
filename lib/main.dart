import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:plantonizer/authentification/SingUpPage.dart';
import 'package:plantonizer/plant_logic/Plants_page.dart';
import 'package:provider/provider.dart';
import 'package:plantonizer/authentification/authentification_serivce.dart';
import 'package:plantonizer/routes.dart';
import 'package:plantonizer/home.dart';
import 'package:plantonizer/plant_logic/plant_card.dart';
import 'package:plantonizer/network/loading.dart';
import 'package:plantonizer/authentification/LoginPage.dart';
//import 'package:splashscreen/splashscreen.dart';
Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Plantonizer());
}

class Plantonizer extends StatelessWidget {
   Plantonizer({ Key? key }) : super(key: key);

  User? result = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:result != null ? PlantsPage() : LoginPage() ,
     // routes: appRoutes,
    );
  }
}

// class IntroScreen extends StatelessWidget {
//   const IntroScreen({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     User? result = FirebaseAuth.instance.currentUser;
//     if(result != null){
//       return PlantsPage();
//     }else return LoginPage();
//   }
// }

/*
 return SplashScreen(
      useLoader: true,
      loadingText: Text(""),
      navigateAfterSeconds: result != null ? PlantsPage() : LoginPage(),
      seconds: 5,
      title: Text("Water your plants"),
      backgroundColor: Colors.white,
      loaderColor: Colors.red,
      onClick: ()=>print("flutter"),
    );

*/



/* MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_) => AuthService(FirebaseAuth.instance),
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
*/  