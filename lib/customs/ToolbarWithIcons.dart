import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stockwits/customs/customIcon.dart';

class ToolbarWithIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[

              Image.asset("images/stockwits_logo.png", width: 80, height: 30),
              CustomIcon(icon: Icons.drag_handle, method: null),
              CustomIcon(icon: Icons.notifications, method: null),
              CustomIcon(icon: Icons.move_to_inbox, method: null),
              CustomIcon(icon: Icons.search, method: null),
              CustomIcon(icon: Icons.more_vert, method: null),
            ],
          ),
          Divider(color: Colors.grey)
        ],
      ),
    );
  }
}

