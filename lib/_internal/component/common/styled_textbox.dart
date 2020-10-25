import 'package:flutter/material.dart';

class StyledTextBox extends StatelessWidget {
  final String hintText;
  final double width;
  final double height;
  final Widget prefixIcon;
  final bool obstureText;

  const StyledTextBox({
    Key key,
    this.hintText = '',
    this.width = 270,
    this.height = 50,
    this.prefixIcon,
    this.obstureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle tStyle = TextStyle(
      color: Color(0xff418cfa),
      fontWeight: FontWeight.normal,
    );
    return Container(
      alignment: Alignment.centerLeft,
      width: width,
      height: height,
      decoration: new BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color(0x29000000),
            offset: Offset(0, 3),
            blurRadius: 6,
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextFormField(
        textAlign: TextAlign.left,
        style: tStyle,
        obscureText: obstureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: hintText,
          prefixIcon: prefixIcon,
          prefixStyle: tStyle,
          hintStyle: tStyle,
        ),
      ),
    );
  }
}
