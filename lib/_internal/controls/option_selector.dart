import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/component.dart';
import 'package:trinoapp/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class OptionSelector extends StatelessWidget {
  final String svgIcon;
  final String title;

  const OptionSelector({Key key, this.svgIcon, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        left: 20,
        top: 10,
        right: 10,
        bottom: 10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WebsafeSvg.asset(
            "assets/icons/" + svgIcon,
            width: 48,
            height: 48,
          ),
          Container(
            width: 100,
            alignment: Alignment.centerLeft,
            child: Text(title, style: kMenuStyle),
          ),
          StyledCircularButton(
            height: 34,
            width: 34,
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 14,
              color: Color(0xff418cfa),
            ),
          )
        ],
      ),
    );
  }
}
