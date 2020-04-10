import 'package:flutter/material.dart';

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
                  Expanded(child: BmiChild()),
                  Expanded(child: BmiChild()),
                ],
              ),
            ),
          ],
        ));
  }
}

class BmiChild extends StatelessWidget {
  final colour;

  BmiChild({@required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(10.0),
    );
  }
}
