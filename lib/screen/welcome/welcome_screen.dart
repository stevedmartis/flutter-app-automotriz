import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/common/slideshow.dart';
import 'package:trinoapp/_internal/component/common/spacing.dart';
import 'package:websafe_svg/websafe_svg.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: _size.height * 0.9,
            decoration: new BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff9957F7),
                  Color(0xffffffff),
                ],
                stops: [0, 1],
                begin: Alignment(-0.00, -1.00),
                end: Alignment(0.00, 1.00),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Text('HELLO!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold)),
                ),
                VSpace(20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: 

                  
                  Text('Know everything you need to know about your car',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500)),
                ),
                Expanded(
                  child: SlideShowSvgs(),
                ),
                Text(
                  'Skip intro',
                  style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                  ),
                ),
                VSpace(30),
                RichText(
                  textAlign: TextAlign.center,
                  text: new TextSpan(
                    children: [
                      TextSpan(
                        text: "Trino",
                        style: TextStyle(
                          fontFamily: 'GTWalsheimPro',
                          color: Color(0xff4b3232),
                          fontSize: 27,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      TextSpan(
                        text: "Link",
                        style: TextStyle(
                          fontFamily: 'GTWalsheimPro',
                          color: Color(0xff418cfa),
                          fontSize: 27,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SlideShowSvgs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Slideshow(
        //topDots: true,
        colorPrimary: Color(0xff9957F7),
        sizePrimary: 25,
        sizeSecondary: 15,
        slides: <Widget>[
          WebsafeSvg.asset("assets/images/img-intro-1.svg"),
          WebsafeSvg.asset("assets/images/img-intro-2.svg"),
          WebsafeSvg.asset("assets/images/img-intro-3.svg"),
        ]);
  }
}
