import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class StyledAppBar extends StatelessWidget {
  final Widget child;

  const StyledAppBar({Key key, this.child}) : super(key: key);

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
              child: Container(
                height: 260,
                width: _size.width,
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/images/header-background.png"),
                      fit: BoxFit.cover,
                    )),
                child: Container(
                  padding: EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("Hola Juan Francisco!",
                              style: TextStyle(
                                fontFamily: 'GTWalsheimPro',
                                color: Color(0xff418cfa),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                              )),
                        ],
                      ),
                      WebsafeSvg.asset("assets/images/img-home.svg"),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 260,
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
