import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/component.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

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
                  padding: EdgeInsets.all(10.0),
                  height: 600,
                  alignment: Alignment.topCenter,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      OnboardingMessages(
                        title: "HELLO!",
                        message: "Know everything you need to know about your car",
                        image: "assets/images/img-intro-1.svg",
                      ),
                      OnboardingMessages(
                        title: "HELLO!",
                        message: "Now everything you need\nto know about your car",
                        image: "assets/images/img-intro-2.svg",
                      ),
                      OnboardingMessages(
                        title: "HELLO!",
                        message: "Know everything you need to know about your car",
                        image: "assets/images/img-intro-3.svg",
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
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

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(microseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: isActive ? 16.0 : 13.0,
      width: isActive ? 16.0 : 13.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        border: Border.all(
          color: Colors.black
        ),
      ),
    );
  }
}
