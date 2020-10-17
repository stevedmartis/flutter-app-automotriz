import 'package:flutter/material.dart';

class StyledAppBar extends StatelessWidget {
  final Widget child;

  const StyledAppBar({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width,
      height: _size.height,
      decoration: new BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffd4bafc), Color(0xffffffff)],
          stops: [0, 1],
          begin: Alignment(-0.00, -1.00),
          end: Alignment(0.00, 1.00),
          // angle: 180,
          // scale: undefined,
        ),
      ),
      child: child,
    );
  }
}
