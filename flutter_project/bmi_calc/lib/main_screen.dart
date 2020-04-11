import 'package:flutter/material.dart';
import 'bmi_child.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'sing.dart';

const bottomContainerHeight = 80.0;
const activeColor = Color(0xFF1D1E33);
const inActiveColor = Color(0xFF111328);
const bottomContainerColor = Colors.pink;

//created a gender enum
enum Gender {
  male,
  female,
}

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  Gender selectedGender;

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: BmiChild(
                      color: selectedGender == Gender.male
                          ? activeColor
                          : inActiveColor,
                      cardChild: SingleWidget(
                          icon: FontAwesomeIcons.mars, text: 'Male'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: BmiChild(
                      color: selectedGender == Gender.female
                          ? activeColor
                          : inActiveColor,
                      cardChild: SingleWidget(
                        icon: FontAwesomeIcons.venus,
                        text: 'Female',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BmiChild(
              color: activeColor,
              cardChild: Row(
                children: <Widget>[Text('Height')],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: BmiChild(color: activeColor),
                ),
                Expanded(
                  child: BmiChild(color: activeColor),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 20.0),
            decoration: BoxDecoration(
              color: bottomContainerColor,
            ),
          )
        ],
      ),
    );
  }
}
