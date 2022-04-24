import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({ Key? key }) : super(key: key);
  Function handleChoose;
  String answerText;

  Answer(this.handleChoose, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: ElevatedButton(
        onPressed: handleChoose,
        style: ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent),
        child: Text(answerText),
      ),
    );
  }
}
