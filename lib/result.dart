 import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartHandler;
  Result(this.resultScore, this.restartHandler);

  String get resultPhrase {
    var resultText = 'you did it';
    if (resultScore <= 12) {
      resultText = 'you are awesome';
    } else if (resultScore <= 16) {
      resultText = 'you are good';
    } else if (resultScore <= 20) {
      resultText = 'you are Strange';
    } else {
      resultText = 'you are Bad';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Column(
        children: [
          Center(
            child: Text(resultPhrase,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
          ),

          // ignore: deprecated_member_use
          FlatButton(
            child: Text('Restart Quiz'),
            onPressed: restartHandler,
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
