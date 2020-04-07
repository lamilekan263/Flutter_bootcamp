import 'package:flutter/material.dart';
import 'question_class.dart';

class MainBody extends StatefulWidget {
  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  List<QuestionClass> questions = [
    QuestionClass(question: 'Do you think a cow is an animal', answer: true),
    QuestionClass(question: 'Do you think  ade is an animal', answer: false),
    QuestionClass(question: 'Do you think a rat is an animal', answer: true),
    QuestionClass(question: 'Do you think a goat is an animal', answer: true),
    QuestionClass(question: 'Do you think  Muhammed is an animal', answer: true),
    QuestionClass(question: 'Do you think  Habeeb is  great', answer: false),
    QuestionClass(question: 'Do you think a radio is an animal', answer: false),
    QuestionClass(question: 'Do you think Lekan is World class', answer: true),
    QuestionClass(question: 'Do you think muhammad\'s surname is Oga Bello ', answer: true),
    QuestionClass(question: 'Do you think covid season  is interesting', answer: false),
  ];
  int index = 0;
  bool isCompleted = false;
  int questionNo = 1;
  int scores = 0;
  bool answer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: SafeArea(
          child: SingleChildScrollView(
                      child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:5.0),
                        child: Text(
                          "SIMPLE QUIZ APPLICATION",
                          style: TextStyle(fontSize: 20.0,color:Colors.amberAccent,),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Question Number: $questionNo',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Center(
                              child: Text(
                                '${questions[index].question}',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25.0),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    height: 100.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Your Current Score:   $scores%',
                        style:TextStyle(fontSize:20.0, color: Colors.amber)
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                   
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical:25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (index < questions.length && !isCompleted) {
                                  
                                  if(questions[index].answer == false){
                                    scores +=10;
                                  }
                                  index++;
                                  questionNo++;

                                  if (index == 10) {
                                    isCompleted = true;
                                  }
                                }

                                if (isCompleted) {
                                  index = 0;
                                  questionNo = 1;
                                  isCompleted = false;
                                  scores = 0;
                                }
                              });
                            },
                            child: Icon(
                              Icons.cancel,
                              size: 50.0,
                              color: Colors.red,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (index < questions.length && !isCompleted) {
                                 
                                  if(questions[index].answer == true){
                                    scores +=10;
                                    
                                  }
                                   index++;
                                  questionNo++;
                                 
                                  if (index == 10) {
                                    isCompleted = true;
                                  }
                                }

                                if (isCompleted) {
                                  index = 0;
                                  questionNo = 1;
                                  scores = 0;
                                  isCompleted = false;
                                }
                              });
                            },
                            child: Icon(
                              Icons.check,
                              size: 50.0,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
