import 'package:flutter/material.dart';

import 'package:bmi_calc/konstant.dart';

class ButtomButton extends StatelessWidget {
  final String text;

  final Function onTap;

  ButtomButton({@required this.text, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: bottomContainerHeight,
        margin: EdgeInsets.only(top: 15.0),
        decoration: BoxDecoration(
          color: bottomContainerColor,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
