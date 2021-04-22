import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:third_task/quiz%20model/myQuiz.dart';
import 'package:third_task/results.dart';

class QuestionScreen extends StatefulWidget {
  final int index;
  static int total_points=0;
  static List<String> user_answers;
  QuestionScreen(this.index);
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  Quiz my_qiuz=Quiz();
  bool isCorrect=false;
  bool isWrong=false;
  bool showAns=false;
  bool isPressed=false; //to take the grade of the first press

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              Text(
                (widget.index+1).toString()+')  '+my_qiuz.quiz[widget.index].question,
                style: TextStyle(color: Colors.white,fontSize: 20.0),
              ) ,
             Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 MaterialButton( onPressed:(){
                   if(my_qiuz.quiz[widget.index].correctAns==my_qiuz.quiz[widget.index].possibleAnswers[0])
                     setState(() {
                       if(!isPressed) {
                         QuestionScreen.total_points += 25;
                       }
                       isCorrect = true;
                       isWrong = false;
                       isPressed=true;
                     });
                   else
                     setState(() {
                       isCorrect = false;
                       isWrong = true;
                       isPressed=true;
                     });
                   QuestionScreen.user_answers.add(my_qiuz.quiz[widget.index].possibleAnswers[0]);
                 },
                   child: Container(
                     width: 180.0,
                     height: 35.0,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(15.0),
                       boxShadow: [
                         BoxShadow(
                           color: Colors.amber,
                           offset: const Offset(
                             5.0,
                             5.0,
                           ),
                           blurRadius: 10.0,
                           spreadRadius: 2.0,
                         ),
                         //BoxShadow
                       ],
                     ),
                     child: Center(
                       child: Text(
                         my_qiuz.quiz[widget.index].possibleAnswers[0],
                       ),
                     ),
                   ),
                 ),
                 MaterialButton( onPressed:(){
                   if(my_qiuz.quiz[widget.index].correctAns==my_qiuz.quiz[widget.index].possibleAnswers[1])
                     setState(() {
                       if(!isPressed) {
                         QuestionScreen.total_points += 25;
                       }
                       isCorrect = true;
                       isWrong = false;
                       isPressed=true;
                     });
                   else
                     setState(() {
                       isCorrect = false;
                       isWrong = true;
                       isPressed=true;
                     });
                   QuestionScreen.user_answers.add(my_qiuz.quiz[widget.index].possibleAnswers[1]);
                 },
                   child: Container(
                     width: 180.0,
                     height: 35.0,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(15.0),
                       boxShadow: [
                         BoxShadow(
                           color: Colors.amber,
                           offset: const Offset(
                             5.0,
                             5.0,
                           ),
                           blurRadius: 10.0,
                           spreadRadius: 2.0,
                         ),
                         //BoxShadow
                       ],
                     ),
                     child: Center(
                       child: Text(
                         my_qiuz.quiz[widget.index].possibleAnswers[1],
                       ),
                     ),
                   ),
                 ) ,
                 MaterialButton( onPressed:(){
                   if(my_qiuz.quiz[widget.index].correctAns==my_qiuz.quiz[widget.index].possibleAnswers[2])
                     setState(() {
                       if(!isPressed) {
                         QuestionScreen.total_points += 25;
                       }
                       isCorrect = true;
                       isWrong = false;
                       isPressed=true;
                     });
                   else
                     setState(() {
                       isCorrect = false;
                       isWrong = true;
                       isPressed=true;
                     });
                   QuestionScreen.user_answers.add(my_qiuz.quiz[widget.index].possibleAnswers[2]);
                 },
                   child: Container(
                     width: 180.0,
                     height: 35.0,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(15.0),
                       boxShadow: [
                         BoxShadow(
                           color: Colors.amber,
                           offset: const Offset(
                             5.0,
                             5.0,
                           ),
                           blurRadius: 10.0,
                           spreadRadius: 2.0,
                         ),
                         //BoxShadow
                       ],
                     ),
                     child: Center(
                       child: Text(
                         my_qiuz.quiz[widget.index].possibleAnswers[2],
                       ),
                     ),
                   ),
                 ),
                 MaterialButton( onPressed:(){
                   if(my_qiuz.quiz[widget.index].correctAns==my_qiuz.quiz[widget.index].possibleAnswers[3])
                     setState(() {
                       if(!isPressed) {
                         QuestionScreen.total_points += 25;
                       }
                       isCorrect = true;
                       isWrong = false;
                      isPressed=true;
                     });
                   else
                     setState(() {
                       isCorrect = false;
                       isWrong = true;
                       isPressed=true;
                     });

                   QuestionScreen.user_answers.add(my_qiuz.quiz[widget.index].possibleAnswers[3]);

                 },
                   child: Container(
                     width: 180.0,
                     height: 35.0,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(15.0),
                       boxShadow: [
                         BoxShadow(
                           color: Colors.amber,
                           offset: const Offset(
                             5.0,
                             5.0,
                           ),
                           blurRadius: 10.0,
                           spreadRadius: 2.0,
                         ),
                         //BoxShadow
                       ],
                     ),
                     child: Center(
                       child: Text(
                         my_qiuz.quiz[widget.index].possibleAnswers[3],
                       ),
                     ),
                   ),
                 ),
               ],
             ),
            Visibility(
              child: Icon(
                Icons.check,
                color: Colors.green,
                size: 50.0,
              ),
              visible: isCorrect,
              replacement: Visibility(
                child: Icon(
                  Icons.clear,
                  color: Colors.red,
                  size: 50.0,
                ),
                visible: isWrong,
              ),
            ),
            Visibility(child: Text(
                'Correct Answer: '+my_qiuz.quiz[widget.index].correctAns,
                style: TextStyle(color: Colors.white)
            ),
              visible: isCorrect||isWrong,
            ),
            MaterialButton(
              onPressed: () {
               if(widget.index==3)
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) => ResultScreen(QuestionScreen.total_points,QuestionScreen.user_answers),
                   ),
                 );
               else  Navigator.push(
                 context,
                 MaterialPageRoute(
                   builder: (context) => QuestionScreen(widget.index+1),
                 ),
               );
              },
              child: Container(
                width: 100.0,
                height: 70.0,
                decoration:BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child :Center(
                  child: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.white,
                    size: 50.0,
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
