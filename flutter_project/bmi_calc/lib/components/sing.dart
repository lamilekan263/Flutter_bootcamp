import 'package:flutter/material.dart';

class SingleWidget extends StatelessWidget {
  SingleWidget({this.text, this.icon});

  final IconData icon;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 40.0),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 20.0),
        ),
      ],
    );
  }
}
