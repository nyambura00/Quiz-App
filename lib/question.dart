import 'package:flutter/material.dart';

//building a stateless widget to cope up with the re-rendering changes of just this part of the specific widget
class Questions extends StatelessWidget {
final String questionText;
 Questions(this.questionText);   //A class constructor implementing an instance of input data

  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity, //the container takes full width of the screen
    margin: EdgeInsets.all(10), 
    child: Text(questionText, style: TextStyle(fontSize: 24),textAlign: TextAlign.center,),);
  }
}