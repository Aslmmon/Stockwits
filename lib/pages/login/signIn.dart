import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stockwits/Navigation.dart';
import 'package:stockwits/customs/customEditText.dart';
import 'package:stockwits/customs/customPageNameTitle.dart';
import 'package:stockwits/customs/customToolbar.dart';
import 'package:stockwits/services/Auth.dart';
import 'package:stockwits/services/LocalDatabase.dart';
import 'package:stockwits/shared/loading.dart';
import 'forgetpassword.dart';

class SignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignIn();
}

class _SignIn extends State<SignIn> {
  final AuthService _auth = AuthService();
  var local = LocalDatabase();
  bool checkBoxValue = false;
  String email = "";
  bool saved = false;
  String fullName = "";
  String userName = "";
  String password = "";
  String error = "";
  Future<String> saveEmail;
  bool loading = false;

  final _formkey = GlobalKey<FormState>();
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<String> _getEmail() async {
    final prefs = await SharedPreferences.getInstance();
    final EmailNeeded = await prefs.getString("email");
    final password = await prefs.getString("password");
    if (EmailNeeded == null || password == null) {
      return "";
    }
    saved = true;
    return EmailNeeded;
  }


  Future<String> _getPassword() async {
    final prefs = await SharedPreferences.getInstance();
    final password = await prefs.getString("password");
    if ( password == null) {
      return "";
    }
    saved = true;
    return password;
  }


  @override
  void initState() {
    super.initState();
     _getEmail().then((value){
    email = value;
    setState(() {
      saved = true;
    });});

    _getPassword().then((value){
      password = value;
      setState(() {
        saved = true;
      });});
  }

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
      resizeToAvoidBottomInset: false, // set it to false
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Toolbar(titleToolbar: ""),
            Form(
              key: _formkey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    pageNameTitle(pageName: "Sign In"),
                    SizedBox(height: 30),
                    EditText(
                        textHint:"Username or Email",
                        controller:  TextEditingController(text: saved ? email:"") ,
                        value: (val) {
                          setState(() {
                            email = val;
                          });
                        }),
                    EditText(
                        textHint: "Password",
                        controller:  TextEditingController(text: saved ? password:"") ,

                        value: (val) {
                          setState(() {
                            password = val;
                          });
                        }),
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
                        onPressed: () async {
                          if (_formkey.currentState.validate()) {
                            setState(() {
                              loading = true;
                            });
                            dynamic result = await _auth.signIn(
                                email, password);
                            if (result == null) {
                              setState(() {
                                loading = false;
                                error = "Please Enter a valid email";
                                print(error);
                              });
                            } else {
                              loading = false;
                              print("Success");
                              print(checkBoxValue);
                              checkBoxValue  ? local.saveEmailAndPassword(email, password) : false;
                              Navigation.goToHomeScreen(context);
                            }
                          }
                        },
                        child: Text("Sign In"),
                        textColor: Colors.white,
                        color: Colors.blue[700],
                      ),
                    ),
                  ]),
            ),
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
