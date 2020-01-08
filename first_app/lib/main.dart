import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 3},
        {'text': 'Blue', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Snakes', 'score': 10},
        {'text': 'Elephant', 'score': 6},
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Parrot', 'score': 1}
      ]
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Blah Blah Blah', 'score': 10},
        {'text': 'Blah Blah', 'score': 6},
        {'text': 'Blah', 'score': 3},
        {'text': 'Bl', 'score': 1}
      ]
    }
  ];

  void _resetIndex() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answered(int score) {
    _totalScore += score;
    setState(() {
      if (_questionIndex < _questions.length) {
        _questionIndex += 1;
      } else {
        _questionIndex = 0;
      }
    });
    print('Answer Chosen!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answered: _answered)
              : Result(resetIndex: _resetIndex, resultScore: _totalScore)),
    );
  }
}
