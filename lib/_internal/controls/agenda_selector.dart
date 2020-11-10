import 'package:flutter/material.dart';

class AgendaSelector extends StatelessWidget {
  final double width;
  final List<Widget> options;

  const AgendaSelector({Key key, this.width, this.options}) : super(key: key);

  List<Widget> prepareOptions() {
    List<Widget> _opts = new List<Widget>();
    int total = options.length;
    int idx = 0;
    for (Widget opt in options) {
      _opts.add(opt);
      idx++;
      /* if (idx < total ) {
        _opts.add(
          Divider(
            color: Color(0xffe7ecfb),
            height: 2,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
        );
      } */

    }
    return _opts;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: 260,
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: prepareOptions(),
      ),
    );
  }
}
