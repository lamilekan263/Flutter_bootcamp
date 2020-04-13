import 'package:flutter/material.dart';
import '../components/bmi_child.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/sing.dart';
import '../components/roundbutton.dart';
import '../components/buttom_botton.dart';
import 'package:bmi_calc/konstant.dart';
import '../screens/result_page.dart';



//created a gender enum
enum Gender {
  male,
  female,
}
int height = 180;
int age = 20;
int weight = 60;

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
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Height'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: TextStyle(
                          fontSize: 35.0,
                        ),
                      ),
                      Text('Cm'),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0XFFEB1555),
                      overlayColor: Color(0X29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      max: 220.0,
                      min: 120.0,
                      activeColor: Color(0XFFEB1555),
                      inactiveColor: Color(0XFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: BmiChild(
                    color: activeColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Weight',
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                            fontSize: 35.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: BmiChild(
                    color: activeColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Age',
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                            fontSize: 35.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ButtomButton(text: 'Calculate', onTap:(){
             Navigator.push(context,
            MaterialPageRoute(builder: (context) => ResultPage()));
          }),
        ],
      ),
    );
  }
}


