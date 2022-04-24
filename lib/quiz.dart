import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  Function answer;
  int index;
  List<Map<String, Object>> question;

  //positional argument
  Quiz({@required this.answer, @required this.question, @required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(question[index]['pertanyaan']),
      ...(question[index]['jawaban'] as List<Map<String, Object>>)
          .map((answerText) {
        return Answer(() => answer(answerText['skor']), answerText['teks']);
      }).toList(),
    ]);
  }
}
