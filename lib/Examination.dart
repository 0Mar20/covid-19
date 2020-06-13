import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:splash_screen_demo/Examination2.dart';
import 'ExaminationModel.dart';

class Examination extends StatefulWidget {
  @override
  _ExaminationState createState() => _ExaminationState();
}

class _ExaminationState extends State<Examination> {
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
                      counter: "1",
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    MixedContainers(
                      width: 26.0,
                    ),
                    SizedBox(
                      height: 80.0,
                    ),
                    Exam(
                      title1: "هل تشعر",
                      title2: "بالحمى",
                      buttonText: "التالي",
                      footer: "الرجوع",
                      onTapButton: Examination2(),
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



