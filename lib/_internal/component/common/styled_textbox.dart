import 'package:flutter/material.dart';

class StyledTextBox extends StatelessWidget {
  final String hintText;

  const StyledTextBox({
    Key key,
    this.hintText = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      alignment: Alignment.centerLeft,
      width: 270,
      height: 50,
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
        decoration: InputDecoration(
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: hintText,
            prefixIcon: Icon(
              Icons.account_circle_outlined,
              color: Color(0xff418cfa),
              size: 30,
            ),
            prefixStyle: TextStyle(
              fontWeight: FontWeight.normal,
            ),
            hintStyle: TextStyle(color: Color(0xff418cfa))),
      ),
    );
  }
}
