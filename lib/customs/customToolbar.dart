import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Toolbar extends StatelessWidget {
  Toolbar({this.titleToolbar});

  String titleToolbar = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(left: 15, bottom: 10),
                    child: Icon(Icons.arrow_back)),
                Container(
                    margin: EdgeInsets.only(left: 15, bottom: 10),
                    child: titleToolbar.isNotEmpty
                        ? Text(titleToolbar, style: TextStyle(fontSize: 18))
                        : Text(""))
              ],
            ),
          ),
          Divider(color: Colors.grey)
        ],
      ),
    );
  }
}
