import 'package:flutter/material.dart';
import 'package:splash_screen_demo/Examination9.dart';
import 'ExaminationModel.dart';

class Examination8 extends StatefulWidget {
  @override
  _Examination8State createState() => _Examination8State();
}

class _Examination8State extends State<Examination8> {
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
                          counter: "8",
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        MixedContainers(
                          width: 208.0,
                        ),
                        SizedBox(
                          height: 80.0,
                        ),
                        Exam(
                          title1: "هل لديك",
                          title2: "التهاب في الحلق",
                          buttonText: "التالي",
                          footer: "الرجوع",
                          onTapButton: Examination9(),
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
