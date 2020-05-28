import 'package:flutter/material.dart';
import 'signup.dart';
import 'signIn.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future navigateToSubPage(context, route) async {
      Navigator.push(context, MaterialPageRoute(builder: (context) => route));
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              "images/stockwits_logo.png",
              width: 150,
              height: 60,
            ),
            Text("Tap into the pulse \n of the markets",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            FlatButton(
              padding: EdgeInsets.all(15),
              onPressed: () {
                navigateToSubPage(context, Signup());
              },
              child: Text("Get Started"),
              textColor: Colors.white,
              color: Colors.blue[700],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text("Already have an account?"),
                InkWell(
                    onTap: () {
                      navigateToSubPage(context, SignIn());
                    },
                    child:
                        Text("Sign In", style: TextStyle(color: Colors.blue)))
              ],
            )
          ],
        ),
      ),
    );
  }
}
