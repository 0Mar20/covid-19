import 'package:flutter/material.dart';
import 'package:splash_screen_demo/Examination6.dart';
import 'ExaminationModel.dart';

class Examination5 extends StatefulWidget {
  @override
  _Examination5State createState() => _Examination5State();
}

class _Examination5State extends State<Examination5> {
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
                          counter: "5",
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        MixedContainers(
                          width: 130.0,
                        ),
                        SizedBox(
                          height: 80.0,
                        ),
                        Exam(
                          title1: "هل لديك",
                          title2: "سعال",
                          buttonText: "التالي",
                          footer: "الرجوع",
                          onTapButton: Examination6(),
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
