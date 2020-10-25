import 'package:flutter/material.dart';

class StyledCircularButton extends StatelessWidget {
  final Widget icon;
  final double height;
  final double width;
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final Function press;

  const StyledCircularButton({
    Key key,
    this.icon,
    this.height = 24.0,
    this.width = 24.0,
    this.press,
    this.backgroundColor = const Color(0xffe7ecfb),
    this.borderColor = Colors.white, this.borderWidth = 2.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height, // height of the button
      width: width, // width of the button
      alignment: Alignment.center,
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: borderColor, width: borderWidth, style: BorderStyle.solid),
        shape: BoxShape.circle,
      ),
      child: icon,
    );
  }
}
