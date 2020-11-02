import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/component.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    final int _numPages = 3;
    final PageController _pageController = PageController(initialPage: 0);
    int _currentPage = 0;

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
                  height: 600,
                  alignment: Alignment.topCenter,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      OnboardingMessages(
                        title: "Test1",
                        message: "Know everything you need to know about your car",
                        image: "assets/images/img-intro-1.svg",
                      ),
                      OnboardingMessages(
                        title: "Test2",
                        message: "Know everything you need to know about your car",
                        image: "assets/images/img-intro-2.svg",
                      ),
                      OnboardingMessages(
                        title: "Test3",
                        message: "Know everything you need to know about your car",
                        image: "assets/images/img-intro-3.svg",
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => {Navigator.of(context).pushNamedAndRemoveUntil("/login", (route) => false)},
                  child: Text(
                    'Skip intro',
                    style: TextStyle(
                      fontSize: 20,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                VSpace(30),
                StyledLogo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
