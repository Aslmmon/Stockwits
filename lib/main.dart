import 'package:flutter/material.dart';
import 'package:stockwits/pages/login/forgetpassword.dart';
import 'package:stockwits/pages/login/signup.dart';
import 'package:stockwits/pages/main/home.dart';
import 'package:stockwits/pages/profile/dummy.dart';
import 'package:stockwits/pages/starter.dart';
import 'pages/login/signIn.dart';

void main() => runApp(MaterialApp(initialRoute: '/', routes: {
      '/': (context) => StarterScreen(),
      '/signIn': (context) => SignIn(),
      '/signUp': (context) => SignUp(),
      '/forgetPassword': (context) => ForgetPassword(),
      '/home': (context) => Home(),
      '/dummy': (context) => Dummy()
    }));
