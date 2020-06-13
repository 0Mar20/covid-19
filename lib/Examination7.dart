import 'package:flutter/material.dart';
import 'package:splash_screen_demo/Examination8.dart';
import 'ExaminationModel.dart';

class Examination7 extends StatefulWidget {
  @override
  _Examination7State createState() => _Examination7State();
}

class _Examination7State extends State<Examination7> {
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
                          counter: "7",
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        MixedContainers(
                          width: 182.0,
                        ),
                        SizedBox(
                          height: 80.0,
                        ),
                        Exam(
                          title1: "هل لديك",
                          title2: "اسهال",
                          buttonText: "التالي",
                          footer: "الرجوع",
                          onTapButton: Examination8(),
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
