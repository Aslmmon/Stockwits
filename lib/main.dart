import 'package:flutter/material.dart';
import 'package:stockwits/pages/forgetpassword.dart';
import 'package:stockwits/pages/signup.dart';
import 'package:stockwits/pages/starter.dart';
import 'pages/signIn.dart';

void main() => runApp(MaterialApp(initialRoute: '/', routes: {
      '/': (context) => StarterScreen(),
      '/signIn': (context) => SignIn(),
      '/signUp': (context) => Signup(),
      '/forgetPassword': (context) => ForgetPassword(),
    }));
