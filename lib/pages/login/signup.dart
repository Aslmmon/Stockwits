import 'package:flutter/material.dart';
import 'package:stockwits/Navigation.dart';
import 'package:stockwits/customs/customEditText.dart';
import 'package:stockwits/customs/customPageNameTitle.dart';
import 'package:stockwits/customs/customToolbar.dart';
import 'package:stockwits/services/Auth.dart';
import 'package:stockwits/shared/loading.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final AuthService _auth = AuthService();
  String email = "";
  String fullName = "";
  String userName = "";
  String password = "";
  String error = "";
  bool loading = false;
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Toolbar(titleToolbar: ""),
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
                                EditText(
                                    textHint: "Full Name",
                                    validationState: (val) =>
                                        val.isEmpty ? "Enter Full Name" : null,
                                    value: (val) {
                                      setState(() {
                                        fullName = val;
                                      });
                                    }),
                                EditText(
                                    textHint: "Email address",
                                    validationState: (val) => val.isEmpty
                                        ? "Enter Email Address"
                                        : null,
                                    value: (val) {
                                      setState(() {
                                        email = val;
                                      });
                                    }),
                                EditText(
                                    textHint: "Username",
                                    validationState: (val) =>
                                        val.isEmpty ? "Enter User Name" : null,
                                    value: (val) {
                                      setState(() {
                                        userName = val;
                                      });
                                    }),
                                EditText(
                                    textHint: "Password (6+ characters)",
                                    validationState: (val) => val.length < 6
                                        ? "Enter Password +6 characters long"
                                        : null,
                                    value: (val) {
                                      setState(() {
                                        password = val;
                                      });
                                    }),
                                Container(
                                  margin: EdgeInsets.only(top: 40, left: 20),
                                  child: FlatButton(
                                    onPressed: () async {
                                      if (_formkey.currentState.validate()) {
                                        setState(() {
                                          loading = true;
                                        });
                                        dynamic result = await _auth.register(
                                            email, password);
                                        if (result == null) {
                                          setState(() {
                                            loading = false;
                                            error =
                                                "Please supply a valid email";
                                            print(error);
                                          });
                                        } else {
                                          loading = false;
                                          print("Success");
                                          Navigation.goToHomeScreen(context);
                                        }
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
