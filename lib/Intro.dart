import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'IntroData.dart';
import 'HomeScreen.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {

  ValueNotifier<int> pageViewNotifier = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            itemBuilder: (context, index){
              return Stack(
                  children: <Widget>[
                    Center(
                      child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 250.0,
                                width: 250.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(pages[index].imagePath),
                                      fit: BoxFit.cover
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                pages[index].mainTitle,
                                style: GoogleFonts.cairo(
                                  fontSize: 30.0,
                                ),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                pages[index].subTitle1,
                                style: GoogleFonts.cairo(
                                  fontSize: 18.0,
                                ),
                              ),
                              Text(
                                pages[index].subTitle2,
                                style: GoogleFonts.cairo(
                                  fontSize: 18.0,
                                ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => HomeScreen()
                                  ));
                                },
                                child: pages[index].button,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              ],
                            ),
                      ),
                    ),
                  ],
                );
            },
            itemCount: pages.length,
            onPageChanged: (index){
              pageViewNotifier.value = index;
            },
          ),
          Transform.translate(
            offset: Offset(0, 250),
            child: Align(
                alignment: Alignment.center,
                child: displayPageIndicator(pages.length)
            ),
          ),
        ],
      )
    );
  }

  Widget displayPageIndicator(int length){
    return PageViewIndicator(
      pageIndexNotifier: pageViewNotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.grey,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 12.0,
          color: Color(0xff6066D0),
        ),
      ),
    );
  }

}

