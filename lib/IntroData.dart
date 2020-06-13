import 'package:flutter/material.dart';
import 'pagesModel.dart';
import 'package:google_fonts/google_fonts.dart';

List<PagesModel> pages = [
  PagesModel(
    imagePath: "assets/img/intro1.png",
    button: Container(
      height: 50.0,
      width: 150.0,
      decoration: BoxDecoration(
          color: Color(0xff6066D0),
          borderRadius: BorderRadius.circular(10.0)
      ),
      child: Center(
        child: Text(
          "متابعة",
          style: GoogleFonts.cairo(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    ),
    mainTitle: "اختبار شامل",
    subTitle1: "سوف نوجه اليك بعض الاسئلة ",
    subTitle2: "التي سوف تساعدك على الاطمئنان بصحتك",
  ),
  PagesModel(
    imagePath: "assets/img/intro2.png",
    button: Container(
      height: 50.0,
      width: 150.0,
      decoration: BoxDecoration(
          color: Color(0xff6066D0),
          borderRadius: BorderRadius.circular(10.0)
      ),
      child: Center(
        child: Text(
          "بدء",
          style: GoogleFonts.cairo(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    ),
    mainTitle: "نتائج فورية",
    subTitle1: "بعد الاجابة على كل الأسئلة",
    subTitle2: "سوف نعرض لك ما هى حالتك الصحية فوراً",
  ),
];