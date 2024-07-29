import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  const Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your fav color?',
      'What\'s your fav animal?',
      'What\'s your fav food?',
      'What\'s your fav place?',
      'ALL QUESTIONS COMPLETED!'
    ];
    return Container(
        width: double.infinity,
        // margin: const EdgeInsets.symmetric(
        //   vertical: 80.0,
        // ),
        margin: const EdgeInsets.only(
          bottom: 80.0,
          top: 18,
        ),
        child: Text(
          questionText,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal),
        ));
  }
}
