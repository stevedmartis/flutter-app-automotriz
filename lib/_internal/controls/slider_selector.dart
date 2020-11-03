import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/common/spacing.dart';
import 'package:trinoapp/_internal/component/common/styled_logo.dart';
import 'package:trinoapp/_internal/component/common/styled_onboarding_message.dart';

class OnBoardingSelector extends StatefulWidget {

  @override
  _OnBoardingSelectorState createState() => _OnBoardingSelectorState();
}

class _OnBoardingSelectorState extends State<OnBoardingSelector> {

  final PageController _pageController = PageController(initialPage: 0);

  int _currentPage = 0;

     List<Widget> _pages = [
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
   ];

  @override
  Widget build(BuildContext context) {
    return Column(
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
                this._currentPage = page;
              });
            },
            
            children: _pages
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildPageIndicator(),
        ),
        VSpace(10),
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
        VSpace(10),
        StyledLogo(),
      ],
    );
  }


  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    int numberOfPages = _pages.length;
    for (int i = 0; i < numberOfPages; i++) {
      list.add(i == _currentPage ? _indicator(true, i) : _indicator(false, i));
    }
    return list;
  }

  Widget _indicator(bool isActive, int index) {
    double _size;
    Color _color;

    if ( _currentPage >= index - 0.5 && _currentPage < index + 0.5 ) {
      
      _size = 20;
      _color = Color(0xff3d3656);

    } else {

      _size = 15;
      _color = Colors.transparent;

    }
return AnimatedContainer(

    duration: Duration( milliseconds: 200 ),
          height: _size,
          width: _size,
           margin: EdgeInsets.symmetric( horizontal: 3 ),
    child: Container(
    
         
          decoration: new BoxDecoration(
            color: _color,
            shape: BoxShape.circle,
            border: new Border.all(
              color: Color(0xff3d3656),
              width: 1.5,
            ),
          ),
          child: Container(

            decoration: new BoxDecoration(
            color: _color,
            shape: BoxShape.circle,
            border: new Border.all(
              color: Colors.white,
              width: 1.5,
            ),
          ),
          ),
        ),
      

  );

    

 /*      return AnimatedContainer(
      duration: Duration( milliseconds: 200 ),
      width: _size,
      height: _size,
      margin: EdgeInsets.symmetric( horizontal: 5 ),
      decoration: BoxDecoration(
        color: _color,
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.black
        ),
        
      ),
    ); */

    
  }
}
