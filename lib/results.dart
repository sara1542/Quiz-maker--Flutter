import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:third_task/question_screen.dart';

class ResultScreen extends StatefulWidget {
  final int totalPoints;
  final List<String> userAnswers;
  ResultScreen(this.totalPoints,this.userAnswers);
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body:Center(
        child: Text(
          'You got '+widget.totalPoints.toString()+' out of 100  \n \n \n \n Thanks for taking our Quiz!',
          textAlign: TextAlign.center,
          style: TextStyle(color:Colors.amber,fontSize: 40.0),
        )
        )
    );
  }
}
