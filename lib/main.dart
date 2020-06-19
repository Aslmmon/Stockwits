import 'package:flutter/material.dart';
import 'package:stockwits/pages/main/home.dart';
import 'file:///C:/Users/aslmm/AndroidStudioProjects/Stockwits/lib/pages/login/forgetpassword.dart';
import 'file:///C:/Users/aslmm/AndroidStudioProjects/Stockwits/lib/pages/login/signup.dart';
import 'package:stockwits/pages/starter.dart';
import 'pages/login/signIn.dart';

void main() => runApp(MaterialApp(initialRoute: '/', routes: {
      '/': (context) => StarterScreen(),
      '/signIn': (context) => SignIn(),
      '/signUp': (context) => Signup(),
      '/forgetPassword': (context) => ForgetPassword(),
      '/home': (context) => Home()
    }));
