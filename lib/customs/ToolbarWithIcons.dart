import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToolbarWithIcons extends StatelessWidget {
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
            child: Container(
                margin: EdgeInsets.only(left: 15, bottom: 10),
                child: Icon(Icons.arrow_back)),
          ),
          Divider(color: Colors.grey)
        ],
      ),
    );
  }
}
