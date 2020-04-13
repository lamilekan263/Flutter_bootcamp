import 'package:flutter/material.dart';
import '../components/bmi_child.dart';
import 'package:bmi_calc/konstant.dart';
import '../components/buttom_botton.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 15.0, 0, 0),
                child: Text(
                  'Result',
                  style: kTitleTextstyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: BmiChild(
              color: activeColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Normal', style:resultTextStyle),
                ],
              ),
            ),
          ),
          ButtomButton(
              text: 'RE-Calculate',
              onTap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
