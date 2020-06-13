import 'package:flutter/material.dart';
import 'package:splash_screen_demo/Examination4.dart';
import 'ExaminationModel.dart';

class Examination3 extends StatefulWidget {
  @override
  _Examination3State createState() => _Examination3State();
}

class _Examination3State extends State<Examination3> {
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
                          counter: "3",
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        MixedContainers(
                          width: 78.0,
                        ),
                        SizedBox(
                          height: 80.0,
                        ),
                        Exam(
                          title1: "هل تشعر",
                          title2: "بالضعف",
                          buttonText: "التالي",
                          footer: "الرجوع",
                          onTapButton: Examination4(),
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
