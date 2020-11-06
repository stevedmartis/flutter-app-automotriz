import 'package:flutter/material.dart';

class StyledLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  RichText(
      
      textAlign: TextAlign.center,
      text: new TextSpan(
        children: [
          TextSpan(
            text: "Trino",
            style: TextStyle(
              fontFamily: 'GTWalsheimPro',
              color: Color(0xff4b3232),
              fontSize: 27,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
            ),
          ),
          TextSpan(
            text: "Link",
            style: TextStyle(
              fontFamily: 'GTWalsheimPro',
              color: Color(0xff418cfa),
              fontSize: 27,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      ),
    );
  }
}
