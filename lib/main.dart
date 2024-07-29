import 'package:flutter/material.dart';
import 'package:firstapp/question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionindex = 0;
  var selectedoptions = [];
  var _questiondisplay = 1;

  void answerQuestion() {
    setState(() {
      while (_questionindex <= 4) {
        _questionindex = _questionindex + 1;
        _questiondisplay = _questionindex + 1;
        print(_questionindex);
        break;
      }
      if (_questionindex == 4) {
        print('all questons done');
      }
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your fav color?',
      'What\'s your fav animal?',
      'What\'s your fav food?',
      'What\'s your fav place?',
      'What\'s your fav IPL team?',
      'ALL QUESTIONS COMPLETED!\n\n GOOD BYE.👋✌️',
    ];

    var options = [
      ['red', 'blue', 'green', 'orange'],
      ['elephant', 'tiger', 'lion', 'gorilla'],
      ['sweets', 'fries', 'fruits', 'choclates'],
      ['hyd', 'banglore', 'delhi', 'chennai'],
      ['RCB', 'RR', 'CSK', 'DC'],
    ];

    if (_questionindex <= 4) {
      print(options[_questionindex]);
    }

    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App(ABT U)'),
          // backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          //mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    '$_questiondisplay/5',
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                    ),
                  ),
                )
              ],
            ),
            Question(questions[_questionindex]),
            // const SizedBox(height: 0,),

            if (_questionindex <= 4) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 135,
                    width: 150,
                    child: ElevatedButton(
                      //onPressed: () => print('chosen answer is 1'),
                      onPressed: answerQuestion,
                      child: Text(
                        options[_questionindex][0],
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    height: 135,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: answerQuestion,
                      child: Text(
                        options[_questionindex][1],
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 135,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: answerQuestion,
                      child: Text(
                        options[_questionindex][2],
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  SizedBox(
                    height: 135,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: answerQuestion,
                      child: Text(
                        options[_questionindex][3],
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // FloatingActionButton(
              //   onPressed: answerQuestion,
              //   child: const Icon(
              //     Icons.arrow_right_alt_rounded,
              //     size: 38,
              //   ),
              // ),
            ] //if
          ],
        ),
        floatingActionButton:

            //const FloatingActionButtonLocation(FloatingActionButtonLocation.endFloat),
            FloatingActionButton(
          onPressed: answerQuestion,
          child: const Icon(
            Icons.arrow_right_alt_rounded,
            size: 45,
          ),
        ),
      ),
    );
  }
}
