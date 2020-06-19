import 'package:flutter/cupertino.dart';
import 'package:stockwits/customs/ToolbarWithIcons.dart';

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

  static void goToProfileStaticScreens(context,titlePage) {
    Navigator.pushNamed(context, '/dummy',arguments: ToolbarWithIcons(title:titlePage));
  }

  static void goToForgetPassword(context) {
    Navigator.pushNamed(context, '/forgetPassword');
  }
}
