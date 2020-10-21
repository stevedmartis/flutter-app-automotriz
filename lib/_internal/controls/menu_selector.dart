import 'package:flutter/material.dart';
import 'package:trinoapp/_internal/controls/option_selector.dart';

class MenuSelector extends StatelessWidget {
  final double width;

  const MenuSelector({Key key, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: 250,
      padding: EdgeInsets.all(5.0),
      decoration: new BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(color: Color(0x29000000), offset: Offset(0, 3), blurRadius: 6, spreadRadius: 0),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OptionSelector(
            svgIcon: "location.svg",
            title: "Ubicaciones",
          ),
          Divider(
            color: Color(0xffe7ecfb),
            height: 2,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          OptionSelector(
            title: "Scanner",
            svgIcon: "scanner.svg",
          ),
          Divider(
            color: Color(0xffe7ecfb),
            height: 2,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          OptionSelector(
            title: "Acciones",
            svgIcon: "actions.svg",
          ),
        ],
      ),
    );
  }
}
