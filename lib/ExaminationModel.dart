import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Counter extends StatelessWidget {

  String counter;

  Counter({
   this.counter
});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text(
        "السؤال $counter/10",
        style: GoogleFonts.cairo(
          fontSize: 16.0,
          color: Colors.white.withOpacity(0.5),
        ),
        textAlign: TextAlign.center,
      ),
      alignment: Alignment.centerRight,
    );
  }
}

class MixedContainers extends StatelessWidget {

  double width;

  MixedContainers({
   this.width,
});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 13.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xff6D75D3)
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: width,
            height: 13.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Color(0xffFBA72D)
            ),
          ),
        ),
      ],
    );
  }
}

int temp = 0;

class Exam extends StatelessWidget {

  String title1;
  String title2;
  String buttonText;
  String footer;
  Widget onTapButton;

  Exam({
    this.title1,
    this.title2,
    this.buttonText,
    this.footer,
    this.onTapButton,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/1.7,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20.0),
          topRight: Radius.circular(50.0),
          bottomLeft: Radius.circular(50.0),
        ),
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            child: Text(
              title1,
              style: GoogleFonts.cairo(
                  fontSize: 30.0,
                  color: Color(0xff8297A5),
                  fontWeight: FontWeight.w600
              ),
              textAlign: TextAlign.center,
            ),
            margin: EdgeInsets.only(top: 20.0),
          ),
          Text(
            title2,
            style: GoogleFonts.cairo(
                fontSize: 30.0,
                color: Color(0xffE5BF37),
                fontWeight: FontWeight.w600
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: Color(0xff8297A5)),
              ),
              child: MaterialButton(
                onPressed: (){
                  temp += 1;
                  print(temp);
                },
                highlightColor: Colors.green,
                height: 50.0,
                textColor: Color(0xff8297A5),
                child: Text(
                  "نعم",
                  style: GoogleFonts.cairo(
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.right,
                ),
                splashColor: Colors.green,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: Color(0xff8297A5)),
              ),
              child: MaterialButton(
                onPressed: (){
                  print(temp);
                },
                height: 20.0,
                textColor: Color(0xff8297A5),
                child: Text(
                  "لا",
                  style: GoogleFonts.cairo(
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 40.0,
              width: 80.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xffFCA82E)
              ),
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => onTapButton
                  ));
                },
                child: Center(
                  child: Text(
                    buttonText,
                    style: GoogleFonts.cairo(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
          ),
          FlatButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            child: Text(
              footer,
              style: GoogleFonts.cairo(
                  fontSize: 18.0,
                  color: Colors.blue
              ),
            ),
          )
        ],
      ),
    );
  }
}