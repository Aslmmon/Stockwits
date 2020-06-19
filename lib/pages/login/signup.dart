import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:stockwits/customs/customEditText.dart';
import 'package:stockwits/customs/customPageNameTitle.dart';
import 'package:stockwits/customs/customToolbar.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget createEditText(String labelText) {
      return EditText();
    }

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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        pageNameTitle(pageName: "Sign up"),
                        SizedBox(
                          height: 20,
                        ),
                        EditText(textHint: "Full Name"),
                        EditText(textHint: "Email address"),
                        EditText(textHint: "Username"),
                        EditText(textHint: "Password (6+ characters)"),
                        Container(
                          margin: EdgeInsets.only(top: 40, left: 20),
                          child: FlatButton(
                            onPressed: () {},
                            child: Text("Sign Up"),
                            textColor: Colors.white,
                            color: Colors.blue[700],
                          ),
                        ),
                      ],
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
