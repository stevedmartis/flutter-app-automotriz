import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/component.dart';
import 'package:trinoapp/screen/screens.dart';

class OnBoardingSelector extends StatefulWidget {
  final List<Widget> pages;

  const OnBoardingSelector({
    Key key,
    this.pages,
  }) : super(key: key);

  @override
  _OnBoardingSelectorState createState() => _OnBoardingSelectorState();
}

class _OnBoardingSelectorState extends State<OnBoardingSelector> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
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
            children: widget.pages,
          ),
        ),
        
        (widget.pages.length != this._currentPage+1)?
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: 
          
          _buildPageIndicator(),
        ):
        Container(),

        VSpace(10),
        (widget.pages.length != this._currentPage+1)?
        GestureDetector(
          onTap: () => {Navigator.of(context).pushNamedAndRemoveUntil(ScreensEnum.LOGIN.routeName, (route) => false)},
          child: Text(
         
            'Skip intro',
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
              decoration: TextDecoration.underline,
            ),
          ),
        ):
        Container(),
        VSpace(10),
        StyledLogo(),
      ],
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    int numberOfPages = widget.pages.length;
    for (int i = 0; i < numberOfPages; i++) {
      list.add(  _indicator(numberOfPages, i));
    }
    return list;
  }

  Widget _indicator(int numberOfPages, int index) {
    double _size;
    Color _color;

  


    if (_currentPage >= index - 0.5 && _currentPage < index + 0.5) {
      _size = 20;
      _color = Color(0xff3d3656);
    } else {
      _size = 15;
      _color = Colors.transparent;
    }
    return 
    
    
    AnimatedContainer(
      duration: Duration(milliseconds: 200),
      height: _size,
      width: _size,
      margin: EdgeInsets.symmetric(horizontal: 3),
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
 
  }
}
