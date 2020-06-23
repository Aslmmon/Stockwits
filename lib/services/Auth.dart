import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:stockwits/model/User.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _userFromFirebaseUser(FirebaseUser user){
    return user != null ? User(user.email,uid: user.uid) : null;
  }

  /**
   * Reset Password
   */
  Future resetPassword(String email) async{
    try{
       await _auth.sendPasswordResetEmail(email: email);
    }catch(e){
      print(e.toString());
    }
  }
  /**
   * Sign In
   */
  Future signIn(String email,String password) async{
    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
    }
  }

  /**
   * Register
   */
  Future register(String email,String password) async{
    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
    }
  }

  /**
   * Sign Out
   */
  Future SignOut() async{
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
    }
  }

}