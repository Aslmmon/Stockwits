import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditText extends StatelessWidget {
  EditText({@required this.textHint});

  final String textHint;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: TextFormField(
          obscureText: textHint.contains("Pass"),
          decoration: InputDecoration(
              labelText: textHint, labelStyle: TextStyle(fontSize: 14)),
        ));
  }
}
