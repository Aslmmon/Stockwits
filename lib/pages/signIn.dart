import 'package:flutter/material.dart';
import 'forgetpassword.dart';

class SignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignIn();
}

class _SignIn extends State<SignIn> {
  bool checkBoxValue = false;

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
                contentPadding:
                    EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15)),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
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
                      "Sign In",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  createEditText("Username or email"),
                  createEditText("Password"),
                  Row(
                    children: <Widget>[
                      Checkbox(
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
                  Container(
                    margin: EdgeInsets.only(top: 40, left: 20),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text("Sign In"),
                      textColor: Colors.white,
                      color: Colors.blue[700],
                    ),
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("Forgot yout"),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPassword()));
                          },
                          child: Text(
                            "Password?",
                            style: TextStyle(color: Colors.blue),
                          ),
                        )
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
