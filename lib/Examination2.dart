import 'package:flutter/material.dart';
import 'package:splash_screen_demo/Examination3.dart';
import 'ExaminationModel.dart';

class Examination2 extends StatefulWidget {
  @override
  _Examination2State createState() => _Examination2State();
}

class _Examination2State extends State<Examination2> {
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
                          counter: "2",
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        MixedContainers(
                          width: 52.0,
                        ),
                        SizedBox(
                          height: 80.0,
                        ),
                        Exam(
                          title1: "هل لديك",
                          title2: "قشعريرة",
                          buttonText: "التالي",
                          footer: "الرجوع",
                          onTapButton: Examination3(),
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
