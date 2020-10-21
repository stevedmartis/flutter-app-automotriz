import 'package:flutter/material.dart';

/*
Space use for create space amount components, like:
Space(20.0, 20.0); This mean with and height space are 20.0
 */
class Space extends StatelessWidget {
  final double width;
  final double height;

  Space(this.width, this.height);

  @override
  Widget build(BuildContext context) => SizedBox(width: width, height:  height);
}


/*
Use for vertial space
 */
class VSpace extends StatelessWidget {
  final double size;

  const VSpace(this.size, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Space(0, size);
}

/*
Use for Horizontal Space
 */
class HSpace extends StatelessWidget {
  final double size;

  const HSpace(this.size, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Space(size, 0);
}
