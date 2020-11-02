import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:websafe_svg/websafe_svg.dart';


class Slideshow extends StatelessWidget {

  final List<Widget> slides;
  final bool dotsTop;
  final Color colorPrimary;
  final Color colorSecondary;
  final double sizePrimary;
  final double sizeSecondary;

  Slideshow({
    @required this.slides,
    this.dotsTop     = false,
    this.colorPrimary    = Colors.blue,
    this.colorSecondary  = Colors.grey,
    this.sizePrimary   = 25.0,
    this.sizeSecondary = 12.0,
  });

  
  @override
  Widget build(BuildContext context) {


    return ChangeNotifierProvider(
      create: (_) => new SlideshowModel(),
      child: SafeArea(
        child: Center(
          child: Builder(
            builder: (BuildContext context) {

              Provider.of<SlideshowModel>(context).colorPrimario   = this.colorPrimary;
              Provider.of<SlideshowModel>(context).colorSecundario = this.colorSecondary;
              
              Provider.of<SlideshowModel>(context).bulletPrimario   = this.sizePrimary;
              Provider.of<SlideshowModel>(context).bulletSecundario = this.sizeSecondary;
              
              return _CrearEstructuraSlideshow(dotsTop: dotsTop, slides: slides);
            },
          )
        ),
      ),
    );
    
  }
}

class _CrearEstructuraSlideshow extends StatelessWidget {
  const _CrearEstructuraSlideshow({
    Key key,
    @required this.dotsTop,
    @required this.slides,
  }) : super(key: key);

  final bool dotsTop;
  final List<Widget> slides;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        if ( this.dotsTop ) 
          _Dots( this.slides.length ),

        Expanded(
          child: _Slides( this.slides )
        ),

        if ( !this.dotsTop ) 
          _Dots( this.slides.length ),
      ],
    );
  }
}


class _Dots extends StatelessWidget {

  final int totalSlides;

  _Dots( this.totalSlides );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate( this.totalSlides, (i) => _Dot(i) ),
      ),
    );
  }
}

class _Dot extends StatelessWidget {
 
  final int index;

  _Dot( this.index );

  @override
  Widget build(BuildContext context) {

    final ssModel = Provider.of<SlideshowModel>(context);
    double size;
    Color color;

    if ( ssModel.currentPage >= index - 0.5 && ssModel.currentPage < index + 0.5 ) {
      
      size = ssModel.bulletPrimario;
      color  = ssModel.colorPrimario;

    } else {

      size = ssModel.bulletSecundario;
      color  = ssModel.colorSecundario;
    }

    return AnimatedContainer(
      duration: Duration( milliseconds: 200 ),

      width: size,
      height: size,
      margin: EdgeInsets.symmetric( horizontal: 5 ),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle
      ),
    );
  }
}




class _Slides extends StatefulWidget {

  final List<Widget> slides;

  _Slides( this.slides );

  @override
  __SlidesState createState() => __SlidesState();
}

class __SlidesState extends State<_Slides> {

  final pageViewController = new PageController();

  @override
  void initState() { 
    super.initState();
    
    pageViewController.addListener(() {
      Provider.of<SlideshowModel>(context, listen: false).currentPage = pageViewController.page;
    });

  }

  @override
  void dispose() { 
    pageViewController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return Container(
      child: PageView(
        controller: pageViewController,
        // children: <Widget>[
        //   _Slide( 'assets/svgs/slide-1.svg' ),
        //   _Slide( 'assets/svgs/slide-2.svg' ),
        //   _Slide( 'assets/svgs/slide-3.svg' ),
        // ],
        children: widget.slides.map( (slide) => _Slide( slide ) ).toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  
  final Widget slide;

  _Slide( this.slide );

  @override
  Widget build(BuildContext context) {

        Size _size = MediaQuery.of(context).size;


    return Container(
      width: double.infinity,
      height: double.infinity,
      child:    Stack(
                  children: [
                    Positioned(

                      
                      
                      child: Container(
                        width: _size.width,
                        height:  _size.width * 1.0,
                        child: WebsafeSvg.asset(
                            "assets/images/intro-background.svg"),
                      ),
                    ),
                    Positioned(
                      top: 80,
                      left: 70,
                      child: Container(
                        width: _size.width * 0.60,
                        height: _size.height * 0.30,
                        child:
                            slide,
                      ),
                    ),
                  ],
                ),
    );

    
  }
}


class SlideshowModel with ChangeNotifier {

  double _currentPage     = 0;
  Color _colorPrimary    = Colors.blue;
  Color _colorSecondary  = Colors.grey;
  double _sizePrimary   = 25;
  double _sizeSecundary = 12;

  double get currentPage => this._currentPage;

  set currentPage( double page ) {
    this._currentPage = page;
    notifyListeners();
  }

  Color get colorPrimario => this._colorPrimary;
  set colorPrimario( Color color ) {
    this._colorPrimary = color;
  }

  Color get colorSecundario => this._colorSecondary;
  set colorSecundario( Color color ) {
    this._colorSecondary = color;
  }

  double get bulletPrimario => this._sizePrimary;
  set bulletPrimario( double size ) {
    this._sizePrimary = size;
  }

  double get bulletSecundario => this._sizeSecundary;
  set bulletSecundario( double size ) {
    this._sizeSecundary = size;
  }

}


