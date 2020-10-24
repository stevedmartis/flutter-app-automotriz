import 'package:flutter/material.dart';
import 'package:trinoapp/constants.dart';

class StyledButton extends StatefulWidget {
  final String label;
  final String stateLabel;
  final Function press;
  final Color backgroundColor;
  final Color borderColor;
  final Color fontColor;
  final double borderWidth;
  final double width;

  const StyledButton({
    Key key,
    this.label,
    this.stateLabel = 'Buscando ...',
    this.press,
    this.backgroundColor = kButtonBackgroundColor,
    this.borderColor = kButtonBackgroundColor,
    this.fontColor = const Color(0xffffffff),
    this.width = 171,
    this.borderWidth = 0,
  }) : super(key: key);

  @override
  _StyledButtonState createState() => _StyledButtonState();
}

class _StyledButtonState extends State<StyledButton> {
  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(
      fontFamily: kButtonTextStyle.fontFamily,
      color: widget.fontColor,
      fontSize: kButtonTextStyle.fontSize,
      fontWeight: kButtonTextStyle.fontWeight,
      fontStyle: kButtonTextStyle.fontStyle,
    );

    return GestureDetector(
      onTap: () {
        widget.press();
      },
      child: Container(
        width: widget.width,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.white, width: widget.borderWidth),
        ),
        child: Text(
          widget.label,
          style: style,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
