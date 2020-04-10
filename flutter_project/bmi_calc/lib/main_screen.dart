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
                    cardChild:
                        SingleWidget(icon: FontAwesomeIcons.mars, text: 'Male'),
                  ),
                ),
                Expanded(
                  child: BmiChild(
                    color: bmiChildColor,
                    cardChild: SingleWidget(icon: FontAwesomeIcons.moon, text: 'Female'),
                  ),
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

class SingleWidget extends StatelessWidget {
  SingleWidget({this.text, this.icon});

  final IconData icon;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 80.0),
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
