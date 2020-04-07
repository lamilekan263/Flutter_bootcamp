import 'package:flutter/material.dart';
import 'package:chewie_audio/chewie_audio.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[500],
        body: Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color:Colors.red,
          child: FlatButton(
            onPressed: (){
              setState(() {
                
              });
            },
                      child: Text(
              'Hit Me',
            ),
          ),
        )
      ],
    );
  }
}
