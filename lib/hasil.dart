import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  int totalSkor;
  Function resetQuiz;

  Hasil(this.totalSkor, this.resetQuiz);

  //fungsi getter
  String get hasilText {
    String hasil = 'Anda berhasil';
    if (totalSkor <= 8) {
      hasil = 'Anda hebat sekali';
    } else if (totalSkor <= 12) {
      hasil = 'Anda sedikit kurang';
    } else if (totalSkor <= 16) {
      hasil = 'Anda aneh';
    } else {
      hasil = 'Anda jahat sekali';
    }

    return hasil;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            hasilText,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: resetQuiz,
            child: Text('Reset quiz'),
            style: TextButton.styleFrom(primary: Colors.blue),
          )
        ],
      ),
    );
  }
}
