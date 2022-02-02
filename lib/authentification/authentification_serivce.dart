import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:plantonizer/plant_logic/Plants_page.dart';
import 'package:plantonizer/routes.dart';
import 'dart:async';


class AuthenticationService {

  // 1
  final FirebaseAuth _firebaseAuth;

  AuthenticationService(this._firebaseAuth);

  // 2
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();


  // 3
  Future<String?> signIn({required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return "Signed in";
    } on FirebaseAuthException catch(e) {
      return e.message;
    }
  }
  // 4
  Future<String?> signUp({required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      return "Signed up";
    } on FirebaseAuthException catch(e) {
      return e.message;
    }
  }

  // 5
  Future<String?> signOut() async {
    try {
      await _firebaseAuth.signOut();
      return "Signed out";
    } on FirebaseAuthException catch(e) {
      return e.message;
    }
  }

// 6
 User? getUser() {
    try {
      return _firebaseAuth.currentUser;
    } on FirebaseAuthException {
      return null;
    }
  }

}
class AuthSerice 
{
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> singUp({required String email,required String password}) async
  {

    try{
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    }on FirebaseAuthException catch(e){
      if(e.code == 'week-password'){
        print("The provided password is too weak");
      }else if(e.code == 'email-already-in-use'){
        print("The account already exists for that email");
      }
    } catch(e){
      print(e);
    }

  }
  
  Future<void> singIn(String email, String password) async
  {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(e){
      if(e.code == 'user-not-found'){
        print("No user found for that email");
      }else if(e.code == 'wrong-password'){
        print("Wrong password providede for that user");
      }
    }catch(e){
      print(e);
    }
  }

   User? getUser() {
    try {
      return auth.currentUser;
    } on FirebaseAuthException {
      return null;
    }
  }

}

