import 'dart:io';

import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/common/styled_circularbutton.dart';
import 'package:trinoapp/_internal/component/component.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:device_info/device_info.dart';

class HeaderComponent extends StatefulWidget {
  final String icon;
  final String image;
  final String title;
  final bool backbutton;

  const HeaderComponent({
    Key key,
    this.icon,
    this.image,
    this.title,
    this.backbutton,
  }) : super(key: key);

  @override
  _HeaderComponentState createState() => _HeaderComponentState();
}

class _HeaderComponentState extends State<HeaderComponent> {

  @override
  void initState() {
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
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
        width: _size.width,
        padding: EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (widget.backbutton && Platform.isIOS)
                  Container(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: StyledCircularButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 18,
                          color: Color(0xff418cfa),
                        ),
                      ),
                    ),
                  ),
                Container(
                  child: Row(
                    children: [
                      if (widget.backbutton) WebsafeSvg.asset("assets/icons/current-car.svg"),
                      HSpace(5),
                      Text(
                        widget.title,
                        style: TextStyle(
                          fontFamily: 'GTWalsheimPro',
                          color: Color(0xff418cfa),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 38,
                  height: 38,
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: WebsafeSvg.asset("assets/icons/ui-notification.svg"),
                )
              ],
            ),
            WebsafeSvg.asset(widget.image),
          ],
        ),
      ),
    );
  }
}
