import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/common/spacing.dart';

class StyledOdometer extends StatelessWidget {
  final int distance;

  const StyledOdometer({
    Key key,
    this.distance = 0,
  }) : super(key: key);

  Widget prepareNumber(double width) {
    int showLength = 6;

    if (distance > 999999) {
      showLength = 7;
    }

    var numbers = distance.toString().padLeft(showLength, "0").split("");

    List<Widget> children = List<Widget>();
    for (var i = 0; i < showLength; i++) {

      var numContainer = Container(
        width: 24,
        height: 37,
        alignment: Alignment.center,
        decoration: new BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(3),
          border: Border.all(color: Color(0xff418cfa)),
        ),
        child: new Text(
          numbers[i],
          style: TextStyle(
            fontFamily: 'GTWalsheimPro',
            color: Color(0xff418cfa),
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
          ),
        ),
      );

      children.add(numContainer);
      children.add(HSpace(2));
    }
    children.add(HSpace(5));


    children.add(
      Text(
        "Kms",
        style: TextStyle(
          fontFamily: 'GTWalsheimPro',
          color: Color(0xff418cfa),
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
        ),
      ),
    );

    Row _rowNumbers = Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: children,
    );

    return Container(
      width: width * 0.8,
      alignment: Alignment.center,
      child: _rowNumbers,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      child: prepareNumber(_size.width),
    );
  }
}
