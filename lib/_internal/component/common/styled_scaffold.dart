import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/screen/header_component.dart';

class StyledScaffold extends StatelessWidget {
  final Widget child;
  final String image;
  final String title;
  final String subTitle;
  final bool backbutton;

  const StyledScaffold({
    Key key,
    this.child,
    this.image,
    this.title,
    this.subTitle,
    this.backbutton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
        width: _size.width,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: HeaderComponent(
                image: image,
                title: title,
                backbutton: backbutton,
              ),
            ),
            Positioned(
              top: 259,
              left: 0,
              child: Container(
                padding: EdgeInsets.only(top: 10),
                height: _size.height,
                decoration: new BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffd4bafc),
                      Color(0xffffffff),
                    ],
                    stops: [0, 1],
                    begin: Alignment(-0.00, -1.00),
                    end: Alignment(0.00, 1.00),
                  ),
                ),
                child: child,
              ),
            )
          ],
        )
        // child,
        );
  }
}
