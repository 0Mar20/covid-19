import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splash_screen_demo/User.dart';
import 'User.dart';
import 'Supervisor.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height/2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/img/home.jpg"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50.0),
                          bottomRight: Radius.circular(50.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "كورونا",
                      style: GoogleFonts.cairo(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                        color: Color(0xffBED1F4),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "تسجيل الدخول",
                      style: GoogleFonts.cairo(
                        fontSize: 23.0,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Supervisor()
                        ));
                      },
                      child: Container(
                          height: 50.0,
                          width: MediaQuery.of(context).size.width/1.4,
                          decoration: BoxDecoration(
                              color: Color(0xff5F66D0),
                              borderRadius: BorderRadius.circular(50.0)
                          ),
                          child: Center(
                            child: Text(
                              "مشرف",
                              style: GoogleFonts.cairo(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => User()
                        ));
                      },
                      child: Container(
                          height: 50.0,
                          width: MediaQuery.of(context).size.width/1.4,
                          decoration: BoxDecoration(
                              color: Color(0xff5F66D0),
                              borderRadius: BorderRadius.circular(50.0)
                          ),
                          child: Center(
                            child: Text(
                              "مستخدم",
                              style: GoogleFonts.cairo(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}