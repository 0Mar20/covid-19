import 'package:flutter/material.dart';
import 'package:splash_screen_demo/Examination7.dart';
import 'ExaminationModel.dart';

class Examination6 extends StatefulWidget {
  @override
  _Examination6State createState() => _Examination6State();
}

class _Examination6State extends State<Examination6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff5F66D0),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Column(
                      children: <Widget>[
                        Counter(
                          counter: "6",
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        MixedContainers(
                          width: 156.0,
                        ),
                        SizedBox(
                          height: 80.0,
                        ),
                        Exam(
                          title1: "هل تشعر",
                          title2: "بصعوبة في التنفس",
                          buttonText: "التالي",
                          footer: "الرجوع",
                          onTapButton: Examination7(),
                        ),
                      ],
                    ),
                  ),
                ],
              )
          ),
        )
    );
  }
}
