import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //its a dynamic function that hold the address of answerQuestion function
  final Function selectHandler;
  final String answer;
  Answer(this.selectHandler, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
        // ignore: deprecated_member_use
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(answer),
          onPressed: selectHandler,
        ));
  }
}
