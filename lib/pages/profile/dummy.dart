import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stockwits/customs/ToolbarWithIcons.dart';
import 'package:stockwits/customs/customToolbar.dart';

class Dummy extends StatefulWidget {

  @override
  _DummyState createState() => _DummyState();
}

class _DummyState extends State<Dummy> {


  @override
  Widget build(BuildContext context) {
    final ToolbarWithIcons args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Toolbar(titleToolbar: args.title),
          ],
        ),
      ),
    );
  }
}
