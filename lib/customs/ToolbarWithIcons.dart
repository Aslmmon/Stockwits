import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stockwits/customs/customIcon.dart';

class ToolbarWithIcons extends StatefulWidget {
  @override
  _ToolbarWithIconsState createState() => _ToolbarWithIconsState();
}

class _ToolbarWithIconsState extends State<ToolbarWithIcons> {
  Choice _selectedChoice = choices[0]; // The app's "state".

  void _select(Choice choice) {
    // Causes the app to rebuild with the new _selectedChoice.
    setState(() {
      _selectedChoice = choice;
      print(_selectedChoice.title);
    });
  }

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
              PopupMenuButton<Choice>(
                onSelected: _select,
                itemBuilder: (BuildContext context) {
                  return choices.map((Choice choice) {
                    return PopupMenuItem<Choice>(
                      value: choice,
                      child: Text(
                        choice.title,
                        style: TextStyle(fontSize: 14),
                      ),
                    );
                  }).toList();
                },
              ),
            ],
          ),
          Divider(color: Colors.grey)
        ],
      ),
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'My profile -', icon: Icons.directions_car),
  const Choice(title: 'Get Stockwits Gear', icon: Icons.directions_bike),
  const Choice(title: 'About', icon: Icons.directions_boat),
  const Choice(title: 'House Rules', icon: Icons.directions_bus),
  const Choice(title: 'Settings', icon: Icons.directions_railway),
  const Choice(title: 'Help', icon: Icons.directions_walk),
  const Choice(title: 'Terms and Conditions', icon: Icons.directions_walk),
  const Choice(title: 'Privacy Policy', icon: Icons.directions_walk),
  const Choice(title: 'Sign Out', icon: Icons.directions_walk),
];

Choice choiceAction(String choice) {
  //print(choice);
}
