import 'package:flutter/material.dart';

import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  //state is a generic type we tells the type in angular bracket
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite Color ?',
      'answers': [
        {'text': 'Red', 'score': 6},
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 1},
        {'text': 'Yellow', 'score': 7}
      ]
    },
    {
      'questionText': 'What\'s your favorite Animal ?',
      'answers': [
        {'text': 'Rabit', 'score': 5},
        {'text': 'Lion', 'score': 10},
        {'text': 'Parrot', 'score': 1},
        {'text': 'Snake', 'score': 8}
      ]
    },
    {
      'questionText': 'Who\'s your favorite Instructor ?',
      'answers': [
        {'text': 'Usman', 'score': 1},
        {'text': 'Hassan', 'score': 6},
        {'text': 'Umar', 'score': 8}
      ]
    },
  ];
  var _totalScore = 0;
  var _questionIndex = 0;

  void _restartQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    //setstate is a function that forces flutter to re render the perticuler Ui elements
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions)
              : Result(_totalScore, _restartQuiz)),
    );
  }
}
