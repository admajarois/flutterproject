import 'package:flutter/material.dart';

import './quiz.dart';
import './hasil.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // const MyApp({ Key? key }) : super(key: key);
  int _index = 0;

  var totalSkor = 0;

  var question = [
    {
      'pertanyaan': 'Tempat apa yang akan anda kunjungi?',
      'jawaban': [
        {'teks': 'Pegunungan', 'skor': 10},
        {'teks': 'Pantai', 'skor': 5},
        {'teks': 'mall', 'skor': 3},
        {'teks': 'hutan', 'skor': 1},
      ],
    },
    {
      'pertanyaan': 'Apa warna kesukaan anda?',
      'jawaban': [
        {'teks': 'biru', 'skor': 3},
        {'teks': 'hijau', 'skor': 5},
        {'teks': 'hitam', 'skor': 9},
        {'teks': 'merah', 'skor': 7},
      ],
    },
    {
      'pertanyaan': 'Apa hobi anda?',
      'jawaban': [
        {'teks': 'sepak bola', 'skor': 2},
        {'teks': 'basket', 'skor': 2},
        {'teks': 'berenang', 'skor': 2},
        {'teks': 'ngoding', 'skor': 2},
      ],
    },
  ];

  void resetQuiz() {
    setState(() {
      _index = 0;
      totalSkor = 0;
    });
  }

  void _answer(int skor) {
    totalSkor = totalSkor + skor;
    setState(() {
      _index += 1;
    });
    if (_index < question.length) {
      print("masih ada soal");
    } else {
      print("sudah tidak ada soal");
    }
    print(_index);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Aplikasi Kuis"),
          ),
          body: _index < question.length
              ? Quiz(answer: _answer, question: question, index: _index)
              : Hasil(totalSkor, resetQuiz)),
    );
  }
}
