import 'package:flutter/material.dart';
import 'package:stockwits/customs/customEditText.dart';
import 'package:stockwits/customs/customPageNameTitle.dart';
import 'package:stockwits/customs/customToolbar.dart';

class ForgetPassword extends StatelessWidget {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  pageNameTitle(pageName: "Forgot Password"),
                  Container(
                    margin: EdgeInsets.only(top: 40, left: 20),
                    child: Text(
                        "Enter your email address and we\'ll send you a \nlink to reset your password"),
                  ),
                  EditText(textHint:"Email address"),
                  Container(
                    margin: EdgeInsets.only(top: 40, left: 20),
                    child: FlatButton(
                      onPressed: () {},
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
