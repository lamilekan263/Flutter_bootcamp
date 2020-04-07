import 'package:flutter/material.dart';
import 'quotes.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Quotes> quote =[
    Quotes(text:'Wale is a boss', author:'Dele Giwa'),
    Quotes(text:'Wale is a boss', author:'Dele Giwa'),
    Quotes(text:'Wale is a boss', author:'Dele Giwa'),
    Quotes(text:'Wale is a boss', author:'Dele Giwa'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
        title: Text('Quotes Application'),
        centerTitle: true,
      ),
      body: Container(
          child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: quote.map((q) => Text('${q.text - q.author}')).toList(),
        ),
      )),
    );
  }
}
