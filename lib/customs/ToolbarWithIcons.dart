import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stockwits/Navigation.dart';
import 'package:stockwits/customs/customIcon.dart';

class ToolbarWithIcons extends StatefulWidget {
  ToolbarWithIcons({this.title});
  final String title;

  @override
  _ToolbarWithIconsState createState() => _ToolbarWithIconsState();
}

class _ToolbarWithIconsState extends State<ToolbarWithIcons> {
  Choice _selectedChoice = choices[0]; // The app's "state".




  void _select(Choice choice) {
    // Causes the app to rebuild with the new _selectedChoice.
    setState(() {
      _selectedChoice = choice;
      if(choice.id == 2 || choice.id == 3 || choice.id == 6 || choice.id == 7){
        Navigation.goToProfileStaticScreens(context,choice.title);
      }
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
  const Choice({this.id, this.title, this.icon});

  final String title;
  final IconData icon;
  final int id;
}

const List<Choice> choices = const <Choice>[
  const Choice(id: 1, title: 'My profile -', icon: Icons.directions_car),
  const Choice(id: 2, title: 'About', icon: Icons.directions_boat),
  const Choice(id: 3, title: 'House Rules', icon: Icons.directions_bus),
  const Choice(id: 4, title: 'Settings', icon: Icons.directions_railway),
  const Choice(id: 5, title: 'Help', icon: Icons.directions_walk),
  const Choice(id: 6, title: 'Terms and Conditions', icon: Icons.directions_walk),
  const Choice(id: 7, title: 'Privacy Policy', icon: Icons.directions_walk),
  const Choice(id: 8, title: 'Sign Out', icon: Icons.directions_walk),
];

Choice choiceAction(String choice) {
  //print(choice);
}
