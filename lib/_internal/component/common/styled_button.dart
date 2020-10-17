import 'package:flutter/material.dart';
import 'package:trinoapp/constants.dart';

class StyledButton extends StatefulWidget {
  final String label;
  final String stateLabel;
  final Function press;

  const StyledButton({Key key, this.label, this.stateLabel = 'Buscando ...', this.press}) : super(key: key);

  @override
  _StyledButtonState createState() => _StyledButtonState();
}

class _StyledButtonState extends State<StyledButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.press();
      },
      child: Container(
        width: 171,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: kButtonBackgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          widget.label,
          style: kButtonTextStyle,
        ),
      ),
    );
  }
}
