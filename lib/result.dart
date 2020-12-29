import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function resetHandler;
  Result(this.finalScore, this.resetHandler);

  String get getResults{ //implementation of a getter method that calculates DYNAMIC values
    String resultPhrase;
    if(finalScore > 1000){
      resultPhrase = 'Look at you kiling it!';
    }else if(finalScore < 800){
      resultPhrase = 'You did great!';
    }else{
      resultPhrase = 'This is not so bad!';
    }
    return resultPhrase;
  }


  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      children: [
        Text(getResults, style: TextStyle(fontSize:36, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
        FlatButton(child: Text('We do this again!'), onPressed: resetHandler, textColor: Colors.red,),
      ],
    ),
    );
  }
}