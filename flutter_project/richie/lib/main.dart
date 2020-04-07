import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue[500],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/me.jpg'),
                radius: 70.0,
                backgroundColor: Colors.lightBlue[900],
              ),
              Text('Ibraheem Olalekan',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    fontFamily: 'Pacifico',
                  )),
              Text('FLUTTER DEVELOPER',
                  style: TextStyle(
                    color: Colors.lightBlue[900],
                    fontSize: 20.0,
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                  )),
                  SizedBox(width:200.0,height:20.0, child: Divider(color: Colors.teal[100],)),
             Card(
               
                color:Colors.white,
                margin: EdgeInsets.symmetric(vertical:10.0, horizontal:25.0,),
                child:ListTile(
                  leading:Icon(
                    Icons.phone,
                    color: Colors.lightBlue[900],
                ),
                title:Text('+234 9023878423',
                      style: TextStyle(
                        color: Colors.lightBlue[900],
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0,
                      )),
                )
                 ),
              Card(
                color:Colors.white,
                margin: EdgeInsets.symmetric(vertical:10.0, horizontal:25.0,),
                child:ListTile(
                  leading:Icon(
                    Icons.email,
                    color: Colors.lightBlue[900],
                ),
                title:Text('Lamilekan263@gmail.com',
                      style: TextStyle(
                        color: Colors.lightBlue[900],
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0,
                      )),
                )
                 ),
                 
            ],
          ),
        ),
      ),
    );
  }
}

 