import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


 class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // sing in anon 
  Future singInAnon() async{
    try{

      UserCredential result = await _auth.signInAnonymously();
      User? tmp = result.user; 
      return tmp; 
    } catch(e){ 
      print(e.toString());
      return null;
    }
  }
  // singin with email and password

  // sing up with email and password

  // sing out
 }