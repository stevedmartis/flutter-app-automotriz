import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/component/component.dart';
import 'package:trinoapp/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class OptionSelector extends StatelessWidget {
  final String svgIcon;
  final String title;
  final Function onpress;
  final Color statusColor;

  const OptionSelector({
    Key key,
    this.svgIcon,
    this.title,
    this.onpress,
    this.statusColor = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        left: 15,
        top: 10,
        right: 10,
        bottom: 10,
      ),
      child: GestureDetector(
        onTap: () => {
          onpress(),
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 35,
              width: 38,
              alignment: Alignment.center,
              child: WebsafeSvg.asset(
                "assets/icons/" + svgIcon,
              ),
            ),
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: statusColor,
              ),
            ),
            Container(
              width: _size.width * 0.40,
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
      ),
    );
  }
}
