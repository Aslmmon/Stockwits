
import 'package:flutter/material.dart';
import 'package:stockwits/customs/customEditText.dart';
import 'package:stockwits/customs/customPageNameTitle.dart';
import 'package:stockwits/customs/customToolbar.dart';
import 'package:stockwits/services/Auth.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Toolbar(titleToolbar:""),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 0,
                    child: Form(
                      key: _formkey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          pageNameTitle(pageName: "Sign up"),
                          SizedBox(
                            height: 20,
                          ),
                          EditText(textHint: "Full Name",validationState: (val) => val.isEmpty? "Enter Full Name" : null),
                          EditText(textHint: "Email address",validationState: (val) => val.isEmpty? "Enter Email Address":null),
                          EditText(textHint: "Username",validationState: (val) => val.isEmpty? "Enter User Name":null),
                          EditText(textHint: "Password (6+ characters)",validationState: (val) => val.length <6 ? "Enter Password +6 characters long":null),
                          Container(
                            margin: EdgeInsets.only(top: 40, left: 20),
                            child: FlatButton(
                              onPressed: () {
                                if(_formkey.currentState.validate()){
                                  print("success");
                                }
                              },
                              child: Text("Sign Up"),
                              textColor: Colors.white,
                              color: Colors.blue[700],
                            ),
                          ),
                        ],
                      ),
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

