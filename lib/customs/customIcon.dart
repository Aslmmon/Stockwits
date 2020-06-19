import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  CustomIcon({@required this.icon, @required this.method});

  final IconData icon;
  final Function method;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          method();
        },
        child: Icon(icon));
  }
}
