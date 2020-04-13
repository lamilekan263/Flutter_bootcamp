import 'package:flutter/material.dart';
import '../components/bmi_child.dart';
import 'package:bmi_calc/konstant.dart';
import '../components/buttom_botton.dart';


class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult,@required this.resultText, @required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
 
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
                  Text(resultText.toUpperCase(), style:resultTextStyle),
                  Text(bmiResult, style:kBMITextStyle),
                  Text(interpretation, style:kBodyStyle, textAlign: TextAlign.center,),
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
