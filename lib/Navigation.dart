import 'package:flutter/cupertino.dart';
import 'package:stockwits/customs/ToolbarWithIcons.dart';

class Navigation {


  static void goToSignIn(context) {
    Navigator.pushNamed(context, '/signIn');
  }


  static void goToSignInWithFinish(context) {
    Navigator.popAndPushNamed(context, '/signIn');
  }

  static void goToHomeScreen(context) {
    //pushNamedAndRemoveUntill , remove all backStacks

    Navigator.pushNamedAndRemoveUntil(context, '/home',(Route<dynamic> route) => false);
  }

  static void goToSignUp(context) {
    // push to Specific Route
    //
    Navigator.pushNamed(context, '/signUp');
  }

  static void goToProfileStaticScreens(context,titlePage) {
    Navigator.pushNamed(context, '/dummy',arguments: ToolbarWithIcons(title:titlePage));
  }

  static void goToForgetPassword(context) {
    Navigator.pushNamed(context, '/forgetPassword');
  }
}
