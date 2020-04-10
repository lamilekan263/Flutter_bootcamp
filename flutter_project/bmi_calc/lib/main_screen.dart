import 'package:flutter/material.dart';
import 'bmi_child.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                Expanded(
                  child: BmiChild(),
                ),
                Expanded(
                  child: BmiChild(),
                ),
              ],
            ),
          ),
          Expanded(
            child: BmiChild(),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: BmiChild(),
                ),
                Expanded(
                  child: BmiChild(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

