import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(child: BmiChild()),
                  Expanded(child: BmiChild()),
                ],
              ),
            ),
            Expanded(child: BmiChild()),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(child: BmiChild(
                    cardChild: ,
                  )),
                  Expanded(child: BmiChild()),
                ],
              ),
            ),
          ],
        ));
  }
}

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
