import 'package:flutter/material.dart';
import 'package:splash_screen_demo/Examination10.dart';
import 'ExaminationModel.dart';

class Examination9 extends StatefulWidget {
  @override
  _Examination9State createState() => _Examination9State();
}

class _Examination9State extends State<Examination9> {
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
                          counter: "9",
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        MixedContainers(
                          width: 234.0,
                        ),
                        SizedBox(
                          height: 80.0,
                        ),
                        Exam(
                          title1: "هل لديك",
                          title2: "صداع",
                          buttonText: "التالي",
                          footer: "الرجوع",
                          onTapButton: Examination10(),
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
