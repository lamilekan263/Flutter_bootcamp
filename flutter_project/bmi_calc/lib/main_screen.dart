import 'package:flutter/material.dart';
import 'bmi_child.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'sing.dart';


const bottomContainerHeight = 80.0;
const activeColor = Color(0xFF1D1E33);
const inActiveColor = Color(0xFF111328);
const bottomContainerColor = Colors.pink;

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  Color maleCardColor = inActiveColor;
  Color femaleCardColor = inActiveColor;

  // create a function that sets the state of each card color when tapped

  void getCardColor(int gender){
    if(gender == 1){
      if(maleCardColor == inActiveColor ){
        maleCardColor = activeColor;
      }else{
        maleCardColor = inActiveColor;
      }
    }
    if(gender == 2){
      if(femaleCardColor == inActiveColor ){
        femaleCardColor = activeColor;
      }else{
        femaleCardColor = inActiveColor;
      }
    }
  }
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
                      setState((){
                        getCardColor(1);
                      });
                    },
                    child: BmiChild(
                      color: maleCardColor,
                      cardChild: SingleWidget(
                          icon: FontAwesomeIcons.mars, text: 'Male'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState((){
                        getCardColor(2);
                      });
                    },
                    child: BmiChild(
                      color: femaleCardColor,
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
            child: BmiChild(color: activeColor),
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
