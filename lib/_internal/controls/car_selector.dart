import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/component.dart';
import 'package:trinoapp/constants.dart';

class CarSelector extends StatelessWidget {
  final double width;
  final double height;
  final String carModel;
  final String carId;

  const CarSelector({
    Key key,
    this.width,
    this.height = 37,
    this.carModel,
    this.carId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.only(left: 10, right: 10),
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(carModel, style: kMainStyle),
          Container(
            alignment: Alignment.centerRight,
            child: Row(
              children: [
                Text(carId, style: kMainStyle),
                HSpace(5),
                StyledCircularButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Color(0xff418cfa),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}