import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

class AuthHelper {
  static AuthHelper helper = AuthHelper._();

  AuthHelper._();

  Future<String?> signIn(String email, String pass) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: pass,
      );
      return "Success";
    } on FirebaseAuthException catch (e) {
     return e.message;
    }
  }


  Future<String?> signUp(String email, String pass) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: pass);
      return "Success";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }


}
