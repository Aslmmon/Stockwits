import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditText extends StatelessWidget {
  EditText({@required this.textHint, this.validationState,this.value,this.controller});

  final String textHint;
  ValueChanged<String> value;
  final  FormFieldValidator<String> validationState;
  final TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: TextFormField(
          validator: validationState,
          onChanged:value,
          initialValue: " ",
          controller: controller,
          obscureText: textHint.contains("Pass"),
          decoration: InputDecoration(
              labelText: textHint, labelStyle: TextStyle(fontSize: 14)),
        ));
  }
}
