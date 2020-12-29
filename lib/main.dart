import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {   //the class name is written in Pascal format
@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return MyAppState(); //returning the state class object 
  }
}

class MyAppState extends State<MyApp>{ //the state class is a generic class?
void sentenceAnswer () => print('How old are you?');

 final _questions = const [ //const because value is alreadly assigned during the runtime period?
    {
      'Question' : 'Describe your professional experience',
      'Answer' : [{'text': 'One year', 'score': 10}, {'text': 'Two years', 'score': 20}, {'text': 'Three years', 'score': 30}],
    },
    {
      'Question' : 'What is your stack?',
      'Answer' : [{'text': 'Web programming', 'score': 100}, {'text': 'Software Engineering', 'score': 200}, {'text': 'Machine learning', 'score': 300}],
    },
    {
    'Question' : 'What is your motivation?',
    'Answer' : [{'text': 'Security', 'score': 500}, {'text': 'Money', 'score': 200}, {'text': 'Haters', 'score': 10}],
    }
  ];

var _indexQuestion = 0;
var _totalScore = 0;

void answerQuestion(int score){
  _totalScore += score;
  setState(() {
     _indexQuestion = _indexQuestion + 1;
  });
  /*if(_indexQuestion < _questions.length){ 
    print('More questions on the way!');
  }else{
    print('Sorry, that\s all!');
  }*/
  }

  void _resetQuiz(){
    setState(() {
      _indexQuestion = 0;
      _totalScore = 0;
    });
  }


  

  @override  //provided by Dart, that deliberately stresses on the "build" coded widget
  Widget build(BuildContext context) {    //the widget build is a method for the defined class

  /*var questions = [                            //normal and hectic way of declaring variable
    'What is your tech stack?',
    'Describe your professional experience',
    'Do you have any recent projects?'
  ];*/

  //implementing the mapping method -> using curly braces in the questions list
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text('Quiz Time'), backgroundColor: Colors.blue,),
           body: _indexQuestion < _questions.length ?
           //the Quiz class constructors evades traffic in the program code, enabling the code much readable.
            Quiz(questions: _questions, answerQuestion: answerQuestion , indexQuestion: _indexQuestion ,) //stating the defined parameters with their respective attributes...Placed the named arguments positionally
            : Result(_totalScore, _resetQuiz)));
  }
}
