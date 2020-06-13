import 'package:flutter/material.dart';
import 'package:splash_screen_demo/Examination5.dart';
import 'ExaminationModel.dart';

class Examination4 extends StatefulWidget {
  @override
  _Examination4State createState() => _Examination4State();
}

class _Examination4State extends State<Examination4> {
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
                          counter: "4",
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        MixedContainers(
                          width: 104.0,
                        ),
                        SizedBox(
                          height: 80.0,
                        ),
                        Exam(
                          title1: "هل لديك",
                          title2: "ألم في الأطراف",
                          buttonText: "التالي",
                          footer: "الرجوع",
                          onTapButton: Examination5(),
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
