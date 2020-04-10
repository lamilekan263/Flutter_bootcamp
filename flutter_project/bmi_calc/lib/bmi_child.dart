import 'package:flutter/material.dart';



class BmiChild extends StatelessWidget {
  final Color color;
  final Widget cardChild;

  BmiChild({this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(10.0),
    );
  }
}
