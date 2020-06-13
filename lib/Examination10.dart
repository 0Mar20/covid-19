import 'package:flutter/material.dart';
import "infected.dart";
import 'NotInfected.dart';
import 'ExaminationModel.dart';

class Examination10 extends StatefulWidget {
  @override
  _Examination10State createState() => _Examination10State();
}

class _Examination10State extends State<Examination10> {
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
                          counter: "10",
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        MixedContainers(
                          width: 260.0,
                        ),
                        SizedBox(
                          height: 80.0,
                        ),
                        Exam(
                          title1: "هل لديك",
                          title2: "أمراض مزمنة",
                          buttonText: "انهاء",
                          footer: "الرجوع",
                          onTapButton: temp <= 5 ? NotInfected() : Infected()
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