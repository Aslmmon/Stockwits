import 'dart:ui';

import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget createEditText(String labelText) {
      return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: labelText,
                  contentPadding: EdgeInsets.only(
                      left: 15, bottom: 11, top: 11, right: 15)),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back),
                ),
              ),
              Divider(color: Colors.grey),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 40, left: 20),
                    child: Text(
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  createEditText("Full Name"),
                  createEditText("Email address"),
                  createEditText("Username"),
                  createEditText("Password(6+ character)"),
                  Container(
                    margin: EdgeInsets.only(top: 40,left: 20),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text("Sign Up"),
                      textColor: Colors.white,
                      color: Colors.blue[700],
                    ),
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("By signing up,you agree to the"),
                        Text("Terms and Conditions",style: TextStyle(color: Colors.blue),)
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
