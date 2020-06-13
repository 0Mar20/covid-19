import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Examination.dart';

class StartExamination extends StatefulWidget {
  @override
  _StartExaminationState createState() => _StartExaminationState();
}

class _StartExaminationState extends State<StartExamination> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image(
                  image: AssetImage("assets/img/start.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              Transform.translate(
                offset: Offset(0, 280),
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Examination()
                      ));
                    },
                    child: Container(
                      height: 50.0,
                      width: 190.0,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(50.0)
                      ),
                      child: Center(
                        child: Text(
                          "بدء الاختبار",
                          style: GoogleFonts.cairo(
                              fontSize: 20.0,
                              color: Color(0xff0073D0),
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
