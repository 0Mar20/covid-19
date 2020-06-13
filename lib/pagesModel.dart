import 'package:flutter/cupertino.dart';

class PagesModel{
  String imagePath;
  String mainTitle;
  String subTitle1;
  String subTitle2;
  Widget button;

  PagesModel({
   this.imagePath,
   this.button,
   this.mainTitle,
   this.subTitle1,
   this.subTitle2,
});
}