
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:third_task/question_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Welcome To Online Quiz',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40.0, color: Colors.white,),
            ),
            MaterialButton( onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuestionScreen(0),
                ),
              );
            },
            child: Container(
              width: 170.0,
              height: 70.0,
              child:Center(
                child: Text(
                  'Start The Quiz',
                  style: (TextStyle(fontSize: 20.0)),
                ),
              ),
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

            ),
            )
          ],
        )),
      ),
    );
  }
}
