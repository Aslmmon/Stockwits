
import 'package:flutter/cupertino.dart';

class pageNameTitle extends StatelessWidget {
  pageNameTitle({@required this.pageName});

  final String pageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 20),
      child: Text(
        pageName,
        style:
        TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

