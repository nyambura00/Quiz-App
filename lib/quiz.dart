import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions; //the mapped list holds both string and object
  final Function answerQuestion;
  final int indexQuestion;

  Quiz({@required this.questions,@required this.answerQuestion,@required this.indexQuestion});
  @override

  Widget build(BuildContext context) {
    return Column(children: [Questions(questions[indexQuestion]['Question']), //implementing the utility of the imported "questions widget" to boost general app perfomance.
           //Answer(answerQuestion), Answer() is a class constructor function
           //mapping a list into a list of widgets
           ...(questions[indexQuestion]['Answer'] as List<Map<String, Object>>).map((answer){ //executing a function pointer to each 'Answer' element in the list
              return Answer(() => answerQuestion(answer['score']), answer['text']);
           }).toList() //the toList() returns our answer widget to a particular
           ],);
  }
}