import 'package:flutter/material.dart';
import 'package:stockwits/customs/customEditText.dart';
import 'package:stockwits/customs/customPageNameTitle.dart';
import 'package:stockwits/customs/customToolbar.dart';
import 'package:stockwits/services/Auth.dart';

import '../../Navigation.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final AuthService _auth = AuthService();
  String email = "";
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Toolbar(titleToolbar: ""),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  pageNameTitle(pageName: "Forgot Password"),
                  Container(
                    margin: EdgeInsets.only(top: 40, left: 20),
                    child: Text(
                        "Enter your email address and we\'ll send you a \nlink to reset your password"),
                  ),
                  Form(
                    key: _formkey,
                    child: EditText(
                      textHint: "Email address",
                      validationState: (val) =>
                          val.isEmpty ? "Enter Full Name" : null,
                      value: (val) {
                        setState(() {
                          email = val;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40, left: 20),
                    child: FlatButton(
                      onPressed: () async {
                        if (_formkey.currentState.validate()) {
                           await _auth.resetPassword(email);
                            Navigation.goToHomeStarted(context);

                        }
                      },
                      child: Text("Submit"),
                      textColor: Colors.white,
                      color: Colors.blue[700],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

//class ForgetPassword extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//
//
//    return Scaffold(
//      body: SafeArea(
//        child: SingleChildScrollView(
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//             Toolbar(titleToolbar:""),
//              Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: <Widget>[
//                  pageNameTitle(pageName: "Forgot Password"),
//                  Container(
//                    margin: EdgeInsets.only(top: 40, left: 20),
//                    child: Text(
//                        "Enter your email address and we\'ll send you a \nlink to reset your password"),
//                  ),
//                  EditText(textHint:"Email address",value: (val){},),
//                  Container(
//                    margin: EdgeInsets.only(top: 40, left: 20),
//                    child: FlatButton(
//                      onPressed: () {},
//                      child: Text("Submit"),
//                      textColor: Colors.white,
//                      color: Colors.blue[700],
//                    ),
//                  ),
//                ],
//              )
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
