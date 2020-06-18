import 'dart:ui';

import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
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
                      "Forgot password",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40, left: 20),
                    child: Text(
                        "Enter your email address and we\'ll send you a \nlink to reset your password"),
                  ),
                  createEditText("Email address"),
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
