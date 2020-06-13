import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splash_screen_demo/HomeScreen.dart';
import 'Examination.dart';

class NotInfected extends StatefulWidget {
  @override
  _NotInfectedState createState() => _NotInfectedState();
}

class _NotInfectedState extends State<NotInfected> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image(
              image: AssetImage("assets/img/final background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width/1.3,
            height: MediaQuery.of(context).size.height/3,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/img/not infected.png"),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "اطمئن انت تعاني من نزلة برد",
                  style: GoogleFonts.cairo(
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Examination()
                        ));
                      },
                      child: Container(
                        width: 70.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.teal),
                        ),
                        child: Center(
                          child: Text(
                            "اعادة",
                            style: GoogleFonts.cairo(
                                fontSize: 16.0,
                                color: Colors.teal
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomeScreen()
                        ));
                      },
                      child: Container(
                        width: 70.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Text(
                            "انهاء",
                            style: GoogleFonts.cairo(
                                fontSize: 16.0,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
