import 'package:flutter/material.dart';
import 'package:stockwits/Navigation.dart';
import 'package:stockwits/customs/customEditText.dart';
import 'package:stockwits/customs/customPageNameTitle.dart';
import 'package:stockwits/customs/customToolbar.dart';
import 'forgetpassword.dart';

class SignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignIn();
}

class _SignIn extends State<SignIn> {
  bool checkBoxValue = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // set it to false
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Toolbar(),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  pageNameTitle(pageName: "Sign In"),
                  SizedBox(height: 30),
                  EditText(textHint: "Username or Email"),
                  EditText(textHint: "Password"),
                  SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        activeColor: Colors.white,
                        checkColor: Colors.blue,
                        focusColor: Colors.blue,
                        value: checkBoxValue,
                        onChanged: (bool value) {
                          setState(() {
                            checkBoxValue = value;
                          });
                        },
                      ),
                      Text("Remember me"),
                    ],
                  ),
                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.only(top: 40, left: 20),
                    child: FlatButton(
                      onPressed: () {
                        Navigation.goToHomeScreen(context);
                      },
                      child: Text("Sign In"),
                      textColor: Colors.white,
                      color: Colors.blue[700],
                    ),
                  ),
                ]),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text("Forgot your"),
                    InkWell(
                      onTap: () {
                        Navigation.goToForgetPassword(context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "password?",
                          style: TextStyle(color: Colors.blue[700]),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
