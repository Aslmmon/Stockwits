import 'package:flutter/cupertino.dart';

class Navigation {


  static void goToSignIn(context) {
    Navigator.pushNamed(context, '/signIn');
  }

  static void goToHomeScreen(context) {
    Navigator.pushNamed(context, '/home');
  }

  static void goToSignUp(context) {
    Navigator.pushNamed(context, '/signUp');
  }

  static void goToForgetPassword(context) {
    Navigator.pushNamed(context, '/forgetPassword');
  }
}
