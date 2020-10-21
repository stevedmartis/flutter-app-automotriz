import 'package:flutter/material.dart';

class StyledCircularButton extends StatelessWidget {
  final Icon icon;
  final double height;
  final double width;

  const StyledCircularButton({
    Key key,
    this.icon,
    this.height = 24.0,
    this.width = 24.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {},
        child: ClipOval(
          child: Container(
            color: Color(0xffe7ecfb),
            height: height, // height of the button
            width: width, // width of the button
            child: icon,
          ),
        ),
      ),
    );
  }
}
