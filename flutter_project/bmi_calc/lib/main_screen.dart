import 'package:flutter/material.dart';
import 'bmi_child.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bmiChildColor = Color(0xFF1D1E33);

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
                  child: BmiChild(
                    color: bmiChildColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.mars,size:80.0),
                        Text('Male'),
                        
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: BmiChild(color: bmiChildColor),
                ),
              ],
            ),
          ),
          Expanded(
            child: BmiChild(color: bmiChildColor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: BmiChild(color: bmiChildColor),
                ),
                Expanded(
                  child: BmiChild(color: bmiChildColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



