import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stockwits/constatns.dart';
import '../Navigation.dart';

class StarterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    child: Image.asset("images/stockwits_logo.png",
                        width: 200, height: 60)),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text("Tap into the pulse \n of the markets",
                      style: Constants.kLargeFontSize),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: ButtonTheme(
                    minWidth: 150,
                    child: FlatButton(
                      padding: EdgeInsets.all(15),
                      onPressed: () {
                        Navigation.goToSignIn(context);
                      },
                      child: Text("Get Started"),
                      textColor: Colors.white,
                      color: Colors.blue[700],
                    ),
                  ),
                ),
              ],

            ),
          ),

          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text("Already have an account?"),
                  InkWell(
                      onTap: () {
                        Navigation.goToSignIn(context);
                      },
                      child:
                          Text("Sign In", style: TextStyle(color: Colors.blue)))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
